import requests
from bs4 import BeautifulSoup
import mysql.connector
from mysql.connector import Error

# 数据库配置（请修改为你的实际配置）
DB_CONFIG = {
    'host': 'localhost',
    'user': 'root',
    'password': '123456',
    'database': 'agriculturaldata'
}

# 设置请求头
headers = {
    'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'
}

def clear_tables():
    """清空news1和news2表"""
    try:
        conn = mysql.connector.connect(**DB_CONFIG)
        cursor = conn.cursor()

        for table in ["news1", "news2", "news3", "news4", "news5"]:
            cursor.execute(f"TRUNCATE TABLE {table}")

        conn.commit()
        print("已清空news1-5表")

    except Error as e:
        print(f"清空表时出错: {e}")
    finally:
        if 'conn' in locals() and conn.is_connected():
            cursor.close()
            conn.close()

def save_to_mysql(table_name, url, title):
    """将数据保存到MySQL"""
    try:
        conn = mysql.connector.connect(**DB_CONFIG)
        cursor = conn.cursor()

        cursor.execute(f"INSERT INTO {table_name} (href, title) VALUES (%s, %s)", (url, title))

        conn.commit()
        print(f"已保存到{table_name}: {url},{title}")

    except Error as e:
        print(f"数据库保存错误: {e}")
    finally:
        if 'conn' in locals() and conn.is_connected():
            cursor.close()
            conn.close()


if __name__ == "__main__":
    """抓取网页内容并解析"""
    url = 'http://www.nkb.com.cn/'

    try:
        # 清空现有数据
        clear_tables()

        # 获取网页内容
        response = requests.get(url, headers=headers, timeout=10)
        response.encoding = 'utf-8'

        if response.status_code == 200:
            soup = BeautifulSoup(response.text, 'html.parser')

            # 处理"要闻速览"（存入news1）
            yaowen_section = soup.find('div', class_='main8_z_1_left_nr')
            if yaowen_section:
                for link in yaowen_section.find_all('a', class_='title_cut'):
                    save_to_mysql('news1', "http://www.nkb.com.cn" + link.get('href'), link.get_text(strip=True))

            # 处理"惠农政策"（存入news2）
            huinong_section = soup.find('div', class_='main8_z_1_right_nr')
            if huinong_section:
                for link in huinong_section.find_all('a', class_='title_cut'):
                    save_to_mysql('news2', "http://www.nkb.com.cn" + link.get('href'), link.get_text(strip=True))

            # 处理"各地动态"（存入news3）
            gedi_section = soup.find('div', class_='main8_z_3_nr_y')
            if gedi_section:
                for link in gedi_section.find_all('a', class_='img-tu'):
                    save_to_mysql('news3', "http://www.nkb.com.cn" + link.get('href'), link.get_text(strip=True))

            # 处理"农业科技"（存入news4）
            nongye_sections = soup.find_all('div', class_='main8_z_3_nr_y')
            if len(nongye_sections) > 2:
                for link in nongye_sections[1].find_all('a', class_='img-tu'):
                    save_to_mysql('news4', "http://www.nkb.com.cn" + link.get('href'), link.get_text(strip=True))

            # 处理"聚焦杨凌"（存入news5）
            if len(nongye_sections) > 2:
                for link in nongye_sections[2].find_all('a', class_='img-tu'):
                    save_to_mysql('news5', "http://www.nkb.com.cn" + link.get('href'), link.get_text(strip=True))

            print("数据抓取和存储完成！")

        else:
            print(f"请求失败，状态码: {response.status_code}")

    except Exception as e:
        print(f"发生错误: {e}")

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
    'User-Agent': 'Windows NT 10.0 AppleWebKit/537.36  Chrome/91.0.4472.124 Safari/537.36'
}

def clear_tables():
    """清空news1和news2表"""
    try:
        conn = mysql.connector.connect(**DB_CONFIG)
        cursor = conn.cursor()

        for table in ["news1", "news2", "news3", "news4", "news5","news_pic"]:
            cursor.execute(f"TRUNCATE TABLE {table}")

        conn.commit()
        print("已清空news1-5表和news_pic表")

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

def save_pic_news_to_mysql(href, pic_href, title):
    """将图片新闻数据保存到news_pic表"""
    try:
        conn = mysql.connector.connect(**DB_CONFIG)
        cursor = conn.cursor()
        cursor.execute(
            "INSERT INTO news_pic (href, pic_href, title) VALUES (%s, %s, %s)",
            (href, pic_href, title)
        )
        conn.commit()
        print(f"已保存到news_pic: {href}, {pic_href}, {title}")
    except Error as e:
        print(f"news_pic表保存错误: {e}")
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
        response = requests.get(url, headers=headers, timeout=60)
        response.encoding = 'utf-8'

        if response.status_code == 200:
            soup = BeautifulSoup(response.text, 'html.parser')

            # 新增：处理图片新闻（存入news_pic）
            pic_sections = soup.find_all('div', class_='main8_z_3_nr_z')
            for div in pic_sections:
                a_tag = div.find('a', class_='img-tu')
                if a_tag:
                    img_tag = a_tag.find('img')
                    if img_tag and img_tag.has_attr('src'):
                        href = "http://www.nkb.com.cn" + a_tag.get('href')
                        pic_href = img_tag['src']
                        span_tag = a_tag.find('span')
                        title = span_tag.get_text(strip=True) if span_tag else ''
                        save_pic_news_to_mysql(href, pic_href, title)

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

            print("数据抓取和存储完成！")

        else:
            print(f"请求失败，状态码: {response.status_code}")

    except Exception as e:
        print(f"发生错误: {e}")

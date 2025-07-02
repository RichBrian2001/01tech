import requests
from bs4 import BeautifulSoup
import json
import os
from datetime import datetime
import sys
import random
import time

# 作物配置
CROPS = {
    "大豆": "dadou",
    "小麦": "xiaomai",
    "棉花": "mianhua",
    "烟叶": "yanye",
    "玉米": "yumi",
    "干玉米": "yumili",
    "甘蔗": "ganzhe",
    "花生": "huasheng",
    "稻谷": "daogu",
    "土豆": "tudou",
    "高粱": "gaoliang"
}

def get_random_user_agent():
    """获取随机User-Agent"""
    user_agents = [
        'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36',
        'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0',
        'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36 Edg/91.0.864.59',
        'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36 OPR/77.0.4054.277',
        'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36',
        'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82'
    ]
    return random.choice(user_agents)

def get_random_headers():
    """获取随机请求头"""
    return {
        'User-Agent': get_random_user_agent(),
        'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8',
        'Accept-Language': 'zh-CN,zh;q=0.9,en;q=0.8',
        'Accept-Encoding': 'gzip, deflate, br',
        'Connection': 'keep-alive',
        'Cache-Control': 'no-cache',
        'Pragma': 'no-cache',
        'Upgrade-Insecure-Requests': '1',
        'Sec-Fetch-Dest': 'document',
        'Sec-Fetch-Mode': 'navigate',
        'Sec-Fetch-Site': 'none',
        'Sec-Fetch-User': '?1'
    }

def request_with_retry(session, url, max_retries=3):
    """带重试机制的请求函数"""
    for attempt in range(max_retries):
        try:
            # 使用随机延迟
            time.sleep(random.uniform(2, 5))
            headers = get_random_headers()
            headers['Referer'] = 'https://www.cnhnb.com/hangqing/'
            response = session.get(url, headers=headers, timeout=30)
            response.raise_for_status()
            return response
        except requests.exceptions.RequestException as e:
            if attempt == max_retries - 1:  # 最后一次尝试
                raise
            print(f"请求失败，正在进行第{attempt + 2}次尝试...")
            # 指数退避策略
            time.sleep((attempt + 1) * 2)

def extract_crop_prices(crop_name):
    """
    爬取指定作物的价格数据
    :param crop_name: 作物名称（中文）
    :return: 成功返回True，失败返回False
    """
    if crop_name not in CROPS:
        print(f"不支持的作物类型: {crop_name}")
        return False

    crop_code = CROPS[crop_name]
    print(f"开始爬取{crop_name}价格数据...")

    # 构建URL
    url = f"https://www.cnhnb.com/hangqing/{crop_code}/"
    print(f"爬取URL: {url}")

    try:
        session = requests.Session()


        # 访问具体作物页面
        print(f"正在访问{crop_name}价格页面...")
        response = request_with_retry(session, url)
        print(f"成功获取网页响应，状态码: {response.status_code}")

        # 使用html解析器
        soup = BeautifulSoup(response.text, 'html.parser')
        price_data = []

        # 尝试多种可能的选择器
        items = (
            soup.select('.quotation-content-list .market-list-item') or
            soup.select('.market-content-list .market-list-item') or
            soup.select('.market-list .market-list-item') or
            soup.select('.market-list-item')
        )

        print(f"找到 {len(items)} 条价格数据")

        # 保存原始HTML以供调试
        debug_dir = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'debug')
        os.makedirs(debug_dir, exist_ok=True)
        with open(os.path.join(debug_dir, f'debug_{crop_code}.html'), 'w', encoding='utf-8') as f:
            f.write(response.text)

        for item in items[:len(items)]:
            try:
                price_text = item.select_one('.price').text.strip() if item.select_one('.price') else "暂无报价"
                data = {
                    "产品": crop_name,
                    "价格": price_text,
                    "产地": item.select_one('.place').text.strip() if item.select_one('.place') else "未知",
                    "日期": item.select_one('.time').text.strip() if item.select_one('.time') else datetime.now().strftime("%Y-%m-%d"),
                    "单位": "元/斤" if "元/斤" in price_text else "元/千克" if "元/千克" in price_text else "元/吨" if "元/吨" in price_text else "元/斤"
                }
                price_data.append(data)
                print(f"成功解析数据: {data}")
            except Exception as e:
                print(f"解析数据出错: {str(e)}")
                continue

        if price_data:
            # 获取当前脚本所在目录
            script_dir = os.path.dirname(os.path.abspath(__file__))
            root_dir = os.path.abspath(os.path.join(script_dir, "../../../../../../../.."))
            save_dir = os.path.join(root_dir, "ruoyi-ui", "public", "data")

            # 确保目录存在
            os.makedirs(save_dir, exist_ok=True)

            # 使用作物编码作为文件名
            output_file = os.path.join(save_dir, f"price_{crop_code}.json")
            result = {
                "updateTime": datetime.now().strftime("%Y-%m-%d %H:%M:%S"),
                "cropName": crop_name,
                "data": price_data
            }

            print(f"正在保存数据到: {output_file}")
            with open(output_file, "w", encoding="utf-8") as f:
                json.dump(result, f, ensure_ascii=False, indent=2)

            print(f"数据已成功保存到: {output_file}")
            print(f"共保存 {len(price_data)} 条数据")
            return True

        else:
            print(f"未找到任何{crop_name}的价格数据")
            return False

    except requests.exceptions.RequestException as e:
        print(f"网络请求失败: {str(e)}")
        return False
    except Exception as e:
        print(f"发生未知错误: {str(e)}")
        print(f"错误类型: {type(e)}")
        print(f"错误详情: {str(e)}")
        return False

if __name__ == "__main__":
    # 设置随机种子
    random.seed()

    # 从命令行参数获取作物名称
    if len(sys.argv) > 1:
        crop_name = sys.argv[1]
        success = extract_crop_prices(crop_name)
        # 根据执行结果设置退出码
        sys.exit(0 if success else 1)
    else:
        print("请提供作物名称作为参数")
        sys.exit(1)

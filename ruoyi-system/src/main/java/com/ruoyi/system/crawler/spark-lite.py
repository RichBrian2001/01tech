from sparkai.llm.llm import ChatSparkLLM, ChunkPrintHandler
from sparkai.core.messages import ChatMessage
import sys
import json
import urllib.parse
import io

sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='utf-8')

# 星火认知大模型配置
SPARKAI_URL = 'wss://spark-api.xf-yun.com/v1.1/chat'
SPARKAI_APP_ID = 'e0472268'
SPARKAI_API_SECRET = 'MTc4NjUyNTJmMmM2MzY0OTIxNDYxMzI5'
SPARKAI_API_KEY = '0c918d5382ead7c3c9be9fd8ed076205'
SPARKAI_DOMAIN = 'lite'

def build_prompt(weather):
    return f"当前城市：{weather['city']}，天气：{weather['weather']}，温度：{weather['temperature']}℃，风向：{weather['winddirection']}，风力：{weather['windpower']}，湿度：{weather['humidity']}。请根据这些信息，推荐此城市在此天气下适宜种植的农作物，并说明原因。"

if __name__ == '__main__':
    if len(sys.argv) < 2:
        print('请传入天气信息JSON字符串作为参数')
        sys.exit(1)
    weather_json = urllib.parse.unquote(sys.argv[1])
    try:
        weather = json.loads(weather_json)
    except Exception as e:
        print(f'天气信息解析失败: {e}')
        sys.exit(1)
    prompt = build_prompt(weather) + " 请将推荐内容控制在200字左右。"
    spark = ChatSparkLLM(
        spark_api_url=SPARKAI_URL,
        spark_app_id=SPARKAI_APP_ID,
        spark_api_key=SPARKAI_API_KEY,
        spark_api_secret=SPARKAI_API_SECRET,
        spark_llm_domain=SPARKAI_DOMAIN,
        streaming=False,
    )
    messages = [ChatMessage(
        role="user",
        content=prompt
    )]
    result = spark.generate([messages])
    raw_text = result.generations[0][0].text.strip()
    # 直接输出原始文本为reason字段，不再做作物/原因结构化
    suggestions = [{"crop": "AI推荐", "reason": raw_text}]
    print(json.dumps(suggestions, ensure_ascii=False))

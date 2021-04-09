aws sns create-topic --name edx-ddb-monitor

---

aws sns subscribe --topic-arn arn:aws:sns:us-east-1:799098231639:edx-ddb-monitor \
--protocol email --notification-endpoint palerique@gmail.com

---

aws cloudwatch put-metric-alarm --alarm-name DDB-UserErrors \
--alarm-description "Alarm when UserErrors in DynamoDB exceeds 0" \
--namespace AWS/DynamoDB --metric-name UserErrors --statistic Sum \
--period 60 --evaluation-periods 1 --threshold 0 \
--comparison-operator GreaterThanThreshold --unit Count \
--alarm-actions <SNS TOPIC ARN>

---

aws cloudwatch put-metric-alarm --alarm-name DDB-UserErrors \
--alarm-description "Alarm when UserErrors in DynamoDB exceeds 0" \
--namespace AWS/DynamoDB --metric-name UserErrors --statistic Sum \
--period 60 --evaluation-periods 1 --threshold 0 \
--comparison-operator GreaterThanThreshold --unit Count \
--alarm-actions arn:aws:sns:us-east-1:799098231639:edx-ddb-monitor

---

aws lambda update-function-code --function-name DragonSearch \
--zip-file fileb://resources/steve-code.zip

---

---

# !/bin/bash

for i in {1..10} do curl 'https://h4oslb3bjl.execute-api.us-east-1.amazonaws.com/prod' \
-H 'authority: h4oslb3bjl.execute-api.us-east-1.amazonaws.com' \
-H 'sec-ch-ua: "Google Chrome";v="89", "Chromium";v="89", ";Not A Brand";v="99"' \
-H 'accept: application/json, text/javascript, */*; q=0.01' \
-H 'sec-ch-ua-mobile: ?0' \
-H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_3) AppleWebKit/537.36 (KHTML, like Gecko)
Chrome/89.0.4389.114 Safari/537.36' \
-H 'content-type: application/json' \
-H 'origin: https://paulo-lerbach.s3.amazonaws.com' \
-H 'sec-fetch-site: cross-site' \
-H 'sec-fetch-mode: cors' \
-H 'sec-fetch-dest: empty' \
-H 'referer: https://paulo-lerbach.s3.amazonaws.com/' \
-H 'accept-language: en-US,en;q=0.9,pt-BR;q=0.8,pt;q=0.7' \
--data-raw '{"dragon_name_str":"Languatha"}' \
--compressed done


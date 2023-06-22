---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ReplyAllPostRequestBody()
request_body.comment = 'comment-value'




await client.me.messages.by_message_id('message-id').reply_all.post(request_body = request_body)


```
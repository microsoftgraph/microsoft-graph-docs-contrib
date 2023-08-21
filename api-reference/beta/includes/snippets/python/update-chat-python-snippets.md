---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Chat()
request_body.topic = 'Group chat title update'




result = await client.chats.by_chat_id('chat-id').patch(request_body = request_body)


```
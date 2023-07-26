---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ChatMessage()
body = ItemBody()
body.content = 'Hello world'


request_body.body = body



result = await client.chats.by_chat_id('chat-id').messages.post(request_body = request_body)


```
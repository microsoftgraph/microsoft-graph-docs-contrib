---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ChatMessage()
body = ItemBody()
body.contenttype(BodyType.Html('bodytype.html'))

body.content = '<emoji alt=\"😶‍🌫️\"></emoji>'


request_body.body = body



result = await client.chats.by_chat_id('chat-id').messages.post(request_body = request_body)


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = SetStatusMessagePostRequestBody()
status_message = PresenceStatusMessage()
status_messagemessage = ItemBody()
status_messagemessage.content = 'Hey I am available now'

status_messagemessage.contenttype(BodyType.Text('bodytype.text'))


status_message.message = status_messagemessage

request_body.status_message = status_message



await client.users.by_user_id('user-id').presence.set_statu_message.post(request_body = request_body)


```
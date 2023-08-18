---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = MarkAsJunkPostRequestBody()
request_body.move_to_junk = True




result = await client.me.messages.by_message_id('message-id').mark_a_junk.post(request_body = request_body)


```
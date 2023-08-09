---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = TentativelyAcceptPostRequestBody()
request_body.comment = 'I will probably be able to make it.'

request_body.send_response = True




await client.me.events.by_event_id('event-id').tentatively_accept.post(request_body = request_body)


```
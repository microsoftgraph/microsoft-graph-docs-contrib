---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CancelPostRequestBody()
request_body.comment = 'Cancelling for this week due to all hands'




await client.me.events.by_event_id('event-id').cancel.post(request_body = request_body)


```
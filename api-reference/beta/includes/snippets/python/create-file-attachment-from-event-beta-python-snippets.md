---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = FileAttachment(
	odata_type = "#microsoft.graph.fileAttachment",
	name = "menu.txt",
	content_bytes = base64.urlsafe_b64decode("bWFjIGFuZCBjaGVlc2UgdG9kYXk="),
)

result = await graph_client.me.events.by_event_id('event-id').attachments.post(request_body)


```
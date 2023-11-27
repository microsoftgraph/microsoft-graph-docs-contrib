---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = ItemAttachment(
	odata_type = "#microsoft.graph.itemAttachment",
	name = "Holiday event",
	item = Event(
		odata_type = "microsoft.graph.event",
		subject = "Discuss gifts for children",
		body = ItemBody(
			content_type = BodyType.Html,
			content = "Let's look for funding!",
		),
		start = DateTimeTimeZone(
			date_time = "2016-12-02T18:00:00",
			time_zone = "Pacific Standard Time",
		),
		end = DateTimeTimeZone(
			date_time = "2016-12-02T19:00:00",
			time_zone = "Pacific Standard Time",
		),
	),
)

result = await graph_client.me.messages.by_message_id('message-id').attachments.post(request_body)


```
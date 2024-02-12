---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.item_attachment import ItemAttachment
from msgraph.generated.models.event import Event
from msgraph.generated.models.item_body import ItemBody
from msgraph.generated.models.date_time_time_zone import DateTimeTimeZone

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
			date_time = "2020-01-12T18:00:00",
			time_zone = "Pacific Standard Time",
		),
		end = DateTimeTimeZone(
			date_time = "2020-01-12T19:00:00",
			time_zone = "Pacific Standard Time",
		),
	),
)

result = await graph_client.me.outlook.tasks.by_outlook_task_id('outlookTask-id').attachments.post(request_body)


```
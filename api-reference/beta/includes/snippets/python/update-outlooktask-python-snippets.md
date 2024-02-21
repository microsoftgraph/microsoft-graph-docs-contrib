---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.item.outlook.tasks.item.outlook_task_item_request_builder import OutlookTaskItemRequestBuilder
from msgraph.generated.models.outlook_task import OutlookTask
from msgraph.generated.models.date_time_time_zone import DateTimeTimeZone

graph_client = GraphServiceClient(credentials, scopes)

request_body = OutlookTask(
	due_date_time = DateTimeTimeZone(
		date_time = "2016-05-06T16:00:00",
		time_zone = "Eastern Standard Time",
	),
)

request_configuration = OutlookTaskItemRequestBuilder.OutlookTaskItemRequestBuilderPatchRequestConfiguration()
request_configuration.headers.add("Prefer", "outlook.timezone=\"Eastern Standard Time\"")


result = await graph_client.me.outlook.tasks.by_outlook_task_id('outlookTask-id').patch(request_body, request_configuration = request_configuration)


```
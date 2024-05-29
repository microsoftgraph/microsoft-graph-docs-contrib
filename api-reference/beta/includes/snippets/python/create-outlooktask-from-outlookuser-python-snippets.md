---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.item.outlook.tasks.tasks_request_builder import TasksRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
from msgraph_beta.generated.models.outlook_task import OutlookTask
from msgraph_beta.generated.models.date_time_time_zone import DateTimeTimeZone

graph_client = GraphServiceClient(credentials, scopes)

request_body = OutlookTask(
	subject = "Shop for children's weekend",
	start_date_time = DateTimeTimeZone(
		date_time = "2016-05-03T09:00:00",
		time_zone = "Eastern Standard Time",
	),
	due_date_time = DateTimeTimeZone(
		date_time = "2016-05-05T16:00:00",
		time_zone = "Eastern Standard Time",
	),
)

request_configuration = RequestConfiguration()
request_configuration.headers.add("Prefer", "outlook.timezone=\"Pacific Standard Time\"")


result = await graph_client.me.outlook.tasks.post(request_body, request_configuration = request_configuration)


```
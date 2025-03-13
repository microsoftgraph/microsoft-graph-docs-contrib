---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.item.calendar.get_schedule.get_schedule_request_builder import GetScheduleRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
from msgraph_beta.generated.users.item.calendar.get_schedule.get_schedule_post_request_body import GetSchedulePostRequestBody
from msgraph_beta.generated.models.date_time_time_zone import DateTimeTimeZone
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = GetSchedulePostRequestBody(
	schedules = [
		"adelev@contoso.com",
		"meganb@contoso.com",
	],
	start_time = DateTimeTimeZone(
		date_time = "2019-03-15T09:00:00",
		time_zone = "Pacific Standard Time",
	),
	end_time = DateTimeTimeZone(
		date_time = "2019-03-15T18:00:00",
		time_zone = "Pacific Standard Time",
	),
	availability_view_interval = 60,
)

request_configuration = RequestConfiguration()
request_configuration.headers.add("Prefer", "outlook.timezone=\"Pacific Standard Time\"")


result = await graph_client.me.calendar.get_schedule.post(request_body, request_configuration = request_configuration)


```
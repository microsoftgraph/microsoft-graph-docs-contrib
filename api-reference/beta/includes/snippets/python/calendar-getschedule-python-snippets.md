---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.item.calendar.getSchedule.get_schedule_request_builder import GetScheduleRequestBuilder
from msgraph.generated.models.get_schedule_post_request_body import GetSchedulePostRequestBody
from msgraph.generated.models.date_time_time_zone import DateTimeTimeZone

graph_client = GraphServiceClient(credentials, scopes)

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

request_configuration = GetScheduleRequestBuilder.GetScheduleRequestBuilderPostRequestConfiguration()
request_configuration.headers.add("Prefer", "outlook.timezone=\"Pacific Standard Time\"")


result = await graph_client.me.calendar.get_schedule.post(request_body, request_configuration = request_configuration)


```
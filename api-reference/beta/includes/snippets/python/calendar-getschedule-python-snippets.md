---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = GetSchedulePostRequestBody(
	schedules = [
		"adelev@contoso.onmicrosoft.com",
		"meganb@contoso.onmicrosoft.com",
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

request_configuration = GetScheduleRequestBuilder.GetScheduleRequestBuilderPostRequestConfiguration(
headers = {
		'Prefer' : "outlook.timezone=\"Pacific Standard Time\"",
}

)

result = await graph_client.me.calendar.get_schedule.post(request_body, request_configuration = request_configuration)


```
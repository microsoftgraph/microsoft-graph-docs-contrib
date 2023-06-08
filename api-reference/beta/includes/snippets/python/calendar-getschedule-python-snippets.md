---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = GetSchedulePostRequestBody()
request_body.Schedules(['adelev@contoso.onmicrosoft.com', 'meganb@contoso.onmicrosoft.com', ])

start_time = DateTimeTimeZone()
start_time.date_time = '2019-03-15T09:00:00'

start_time.time_zone = 'Pacific Standard Time'


request_body.start_time = start_time
end_time = DateTimeTimeZone()
end_time.date_time = '2019-03-15T18:00:00'

end_time.time_zone = 'Pacific Standard Time'


request_body.end_time = end_time
request_body.AvailabilityViewInterval = 60



request_configuration = GetScheduleRequestBuilder.GetScheduleRequestBuilderPostRequestConfiguration(
headers = {
	'Prefer' : "outlook.timezone=\"Pacific Standard Time\"",
}

)


result = await client.me.calendar.get_schedule.post(request_body = request_body, request_configuration = request_configuration)


```
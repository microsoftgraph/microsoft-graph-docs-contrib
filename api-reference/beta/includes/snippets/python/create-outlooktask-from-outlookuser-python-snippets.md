---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

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

request_configuration = TasksRequestBuilder.TasksRequestBuilderPostRequestConfiguration(
headers = {
		'Prefer' : "outlook.timezone=\"Pacific Standard Time\"",
}

)

result = await graph_client.me.outlook.tasks.post(request_body, request_configuration = request_configuration)


```
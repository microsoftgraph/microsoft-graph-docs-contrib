---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = CalendarViewRequestBuilder.CalendarViewRequestBuilderGetQueryParameters(
		startDateTime = "2017-01-01T19:00:00-08:00",
		endDateTime = "2017-10-01T19:00:00.00-08:00",
)

request_configuration = CalendarViewRequestBuilder.CalendarViewRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
headers = {
			'Prefer' : "outlook.body-content-type=\"text\"",
}

)


result = await client.groups.by_group_id('group-id').calendar_view.get(request_configuration = request_configuration)


```
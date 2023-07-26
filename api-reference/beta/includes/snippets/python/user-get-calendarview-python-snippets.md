---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = CalendarViewRequestBuilder.CalendarViewRequestBuilderGetQueryParameters(
		startDateTime = "2020-01-01T19:00:00-08:00",
		endDateTime = "2020-01-02T19:00:00-08:00",
)

request_configuration = CalendarViewRequestBuilder.CalendarViewRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.me.calendar_view.get(request_configuration = request_configuration)


```
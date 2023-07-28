---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = CalendarViewRequestBuilder.CalendarViewRequestBuilderGetQueryParameters(
		start = "2018-04-30T00:00:00Z",
		end = "2018-05-10T00:00:00Z",
)

request_configuration = CalendarViewRequestBuilder.CalendarViewRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.booking_businesses.by_booking_businesse_id('bookingBusiness-id').calendar_view.get(request_configuration = request_configuration)


```
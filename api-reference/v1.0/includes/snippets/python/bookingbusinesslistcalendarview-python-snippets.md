---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.solutions.bookingBusinesses.item.calendarView.calendar_view_request_builder import CalendarViewRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = CalendarViewRequestBuilder.CalendarViewRequestBuilderGetQueryParameters(
		start = "2018-04-30T00:00:00Z",
		end = "2018-05-10T00:00:00Z",
)

request_configuration = CalendarViewRequestBuilder.CalendarViewRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.solutions.booking_businesses.by_booking_business_id('bookingBusiness-id').calendar_view.get(request_configuration = request_configuration)


```
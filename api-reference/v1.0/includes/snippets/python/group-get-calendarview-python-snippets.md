---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.groups.item.calendarView.calendar_view_request_builder import CalendarViewRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = CalendarViewRequestBuilder.CalendarViewRequestBuilderGetQueryParameters(
		start_date_time = "2017-01-01T19:00:00-08:00",
		end_date_time = "2017-10-01T19:00:00.00-08:00",
)

request_configuration = CalendarViewRequestBuilder.CalendarViewRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)
request_configuration.headers.add("Prefer", "outlook.body-content-type=\"text\"")


result = await graph_client.groups.by_group_id('group-id').calendar_view.get(request_configuration = request_configuration)


```
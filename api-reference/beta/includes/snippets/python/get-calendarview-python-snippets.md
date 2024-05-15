---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.item.calendar.calendar_view.calendar_view_request_builder import CalendarViewRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = CalendarViewRequestBuilder.CalendarViewRequestBuilderGetQueryParameters(
		start_date_time = "2017-01-01T19:00:00-08:00",
		end_date_time = "2017-01-07T19:00:00-08:00",
)

request_configuration = CalendarViewRequestBuilder.CalendarViewRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.me.calendar.calendar_view.get(request_configuration = request_configuration)


```
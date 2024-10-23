---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.users.item.calendar_view.calendar_view_request_builder import CalendarViewRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = CalendarViewRequestBuilder.CalendarViewRequestBuilderGetQueryParameters(
		start_date_time = "2020-01-01T19:00:00-08:00",
		end_date_time = "2020-01-02T19:00:00-08:00",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.me.calendar_view.get(request_configuration = request_configuration)


```
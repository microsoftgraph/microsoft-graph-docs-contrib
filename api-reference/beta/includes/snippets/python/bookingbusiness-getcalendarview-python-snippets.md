---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.solutions.booking_businesses.item.calendar_view.calendar_view_request_builder import CalendarViewRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = CalendarViewRequestBuilder.CalendarViewRequestBuilderGetQueryParameters(
		start = "2018-04-30T00:00:00Z",
		end = "2018-05-10T00:00:00Z",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.solutions.booking_businesses.by_booking_business_id('bookingBusiness-id').calendar_view.get(request_configuration = request_configuration)


```
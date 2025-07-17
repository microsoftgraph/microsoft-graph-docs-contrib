---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.users.item.calendar_view.delta.delta_request_builder import DeltaRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = DeltaRequestBuilder.DeltaRequestBuilderGetQueryParameters(
		start_date_time = "2016-12-01T00:00:00Z",
		end_date_time = "2016-12-30T00:00:00Z",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)
request_configuration.headers.add("Prefer", "odata.maxpagesize=2")


result = await graph_client.me.calendar_view.delta.get(request_configuration = request_configuration)


```
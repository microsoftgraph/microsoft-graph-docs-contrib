---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.applications.applications_request_builder import ApplicationsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = ApplicationsRequestBuilder.ApplicationsRequestBuilderGetQueryParameters(
		filter = "owners/$count eq 0 or owners/$count eq 1",
		count = True,
		select = ["id","displayName"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)
request_configuration.headers.add("ConsistencyLevel", "eventual")


result = await graph_client.applications.get(request_configuration = request_configuration)


```
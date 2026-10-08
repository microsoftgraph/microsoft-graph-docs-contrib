---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.users.item.sponsor_of.sponsor_of_request_builder import SponsorOfRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = SponsorOfRequestBuilder.SponsorOfRequestBuilderGetQueryParameters(
		filter = "microsoft.graph.user/userType eq 'Guest'",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)
request_configuration.headers.add("ConsistencyLevel", "eventual")


result = await graph_client.users.by_user_id('user-id').sponsor_of.get(request_configuration = request_configuration)


```
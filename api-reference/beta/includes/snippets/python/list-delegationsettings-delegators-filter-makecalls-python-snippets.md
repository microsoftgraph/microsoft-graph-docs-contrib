---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.item.communications.call_settings.delegators.delegators_request_builder import DelegatorsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = DelegatorsRequestBuilder.DelegatorsRequestBuilderGetQueryParameters(
		filter = "allowedActions/makeCalls eq true",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.me.communications.call_settings.delegators.get(request_configuration = request_configuration)


```
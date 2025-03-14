---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.directory.attribute_sets.attribute_sets_request_builder import AttributeSetsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = AttributeSetsRequestBuilder.AttributeSetsRequestBuilderGetQueryParameters(
		top = 10,
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.directory.attribute_sets.get(request_configuration = request_configuration)


```
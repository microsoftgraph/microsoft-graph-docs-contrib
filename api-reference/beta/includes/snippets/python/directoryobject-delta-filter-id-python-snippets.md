---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.directory_objects.delta.delta_request_builder import DeltaRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = DeltaRequestBuilder.DeltaRequestBuilderGetQueryParameters(
		filter = "id eq '87d349ed-44d7-43e1-9a83-5f2406dee5bd'",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.directory_objects.delta.get(request_configuration = request_configuration)


```
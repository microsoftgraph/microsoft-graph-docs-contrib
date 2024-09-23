---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.solutions.backup_restore.restore_points.restore_points_request_builder import RestorePointsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = RestorePointsRequestBuilder.RestorePointsRequestBuilderGetQueryParameters(
		expand = ["protectionUnit($filter=id eq 'd234cf54-e0fb-49b7-9c8a-5bcd1439e853')"],
		filter = "protectionDateTime lt 2024-05-12T10:01:00Z",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.solutions.backup_restore.restore_points.get(request_configuration = request_configuration)


```
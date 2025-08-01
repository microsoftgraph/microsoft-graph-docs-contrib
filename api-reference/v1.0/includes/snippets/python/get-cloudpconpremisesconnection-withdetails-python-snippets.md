---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.device_management.virtual_endpoint.on_premises_connections.item.cloud_pc_on_premises_connection_item_request_builder import CloudPcOnPremisesConnectionItemRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = CloudPcOnPremisesConnectionItemRequestBuilder.CloudPcOnPremisesConnectionItemRequestBuilderGetQueryParameters(
		select = ["id","displayName","healthCheckStatus","healthCheckStatusDetail","inUse"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.device_management.virtual_endpoint.on_premises_connections.by_cloud_pc_on_premises_connection_id('cloudPcOnPremisesConnection-id').get(request_configuration = request_configuration)


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.deviceManagement.virtualEndpoint.onPremisesConnections.item.cloud_pc_on_premises_connection_item_request_builder import CloudPcOnPremisesConnectionItemRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = CloudPcOnPremisesConnectionItemRequestBuilder.CloudPcOnPremisesConnectionItemRequestBuilderGetQueryParameters(
		select = ["id","displayName","healthCheckStatus","healthCheckStatusDetail","healthCheckStatusDetails","inUse"],
)

request_configuration = CloudPcOnPremisesConnectionItemRequestBuilder.CloudPcOnPremisesConnectionItemRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.device_management.virtual_endpoint.on_premises_connections.by_cloud_pc_on_premises_connection_id('cloudPcOnPremisesConnection-id').get(request_configuration = request_configuration)


```
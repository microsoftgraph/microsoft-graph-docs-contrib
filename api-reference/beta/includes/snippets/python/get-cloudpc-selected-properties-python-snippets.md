---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.device_management.virtual_endpoint.cloud_p_cs.item.cloud_p_c_item_request_builder import CloudPCItemRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = CloudPCItemRequestBuilder.CloudPCItemRequestBuilderGetQueryParameters(
		select = ["id","displayName","imageDisplayName","lastModifiedDateTime","lastRemoteActionResult","lastLoginResult","connectivityResult","allotmentDisplayName"],
)

request_configuration = CloudPCItemRequestBuilder.CloudPCItemRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.device_management.virtual_endpoint.cloud_p_cs.by_cloud_p_c_id('cloudPC-id').get(request_configuration = request_configuration)


```
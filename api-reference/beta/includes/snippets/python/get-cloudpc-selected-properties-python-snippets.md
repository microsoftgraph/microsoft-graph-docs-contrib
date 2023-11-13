---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = CloudPCItemRequestBuilder.CloudPCItemRequestBuilderGetQueryParameters(
		select = ["id","displayName","imageDisplayName","lastModifiedDateTime","lastRemoteActionResult","lastLoginResult","connectivityResult"],
)

request_configuration = CloudPCItemRequestBuilder.CloudPCItemRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.device_management.virtual_endpoint.cloud_p_cs.by_cloud_p_c_id('cloudPC-id').get(request_configuration = request_configuration)


```
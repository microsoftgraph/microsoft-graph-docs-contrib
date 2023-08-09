---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = CloudPCRequestBuilder.CloudPCRequestBuilderGetQueryParameters(
		select = ["id","displayName","imageDisplayName","lastModifiedDateTime","lastRemoteActionResult","lastLoginResult","connectivityResult"],
)

request_configuration = CloudPCRequestBuilder.CloudPCRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.device_management.virtual_endpoint.cloud_p_cs.by_cloud_p_c_id('cloudPC-id').get(request_configuration = request_configuration)


```
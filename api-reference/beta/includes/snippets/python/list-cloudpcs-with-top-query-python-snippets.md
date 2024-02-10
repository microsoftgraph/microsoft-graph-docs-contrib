---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.deviceManagement.virtualEndpoint.cloudPCs.cloud_p_cs_request_builder import CloudPCsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = CloudPCsRequestBuilder.CloudPCsRequestBuilderGetQueryParameters(
		top = 2,
)

request_configuration = CloudPCsRequestBuilder.CloudPCsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.device_management.virtual_endpoint.cloud_p_cs.get(request_configuration = request_configuration)


```
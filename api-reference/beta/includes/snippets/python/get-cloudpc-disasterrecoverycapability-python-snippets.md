---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.device_management.virtual_endpoint.cloud_p_cs.cloud_p_cs_request_builder import CloudPCsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = CloudPCsRequestBuilder.CloudPCsRequestBuilderGetQueryParameters(
		select = ["id","displayName","disasterRecoveryCapability"],
		filter = "disasterRecoveryCapability/capabilityType eq 'failover'",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.device_management.virtual_endpoint.cloud_p_cs.get(request_configuration = request_configuration)


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.cloud_pc_agent_pool import CloudPcAgentPool
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CloudPcAgentPool(
	odata_type = "#microsoft.graph.cloudPcAgentPool",
	display_name = "Contoso Development Pool Updated",
	description = "Contoso Development Pool Description Updated",
)

result = await graph_client.device_management.virtual_endpoint.cloud_pc_pools.by_cloud_pc_pool_id('cloudPcPool-id').patch(request_body)


```
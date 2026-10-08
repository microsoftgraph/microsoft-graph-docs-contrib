---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.cloud_pc_agent_pool_user_assignment import CloudPcAgentPoolUserAssignment
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CloudPcAgentPoolUserAssignment(
	odata_type = "#microsoft.graph.cloudPcAgentPoolUserAssignment",
	user_principal_id = "f6a7b8c9-d0e1-2345-f678-901234567890",
)

result = await graph_client.device_management.virtual_endpoint.cloud_pc_pools.by_cloud_pc_pool_id('cloudPcPool-id').assignments.post(request_body)


```
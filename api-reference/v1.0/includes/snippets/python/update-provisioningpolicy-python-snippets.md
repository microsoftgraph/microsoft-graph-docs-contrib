---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.cloud_pc_provisioning_policy import CloudPcProvisioningPolicy
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CloudPcProvisioningPolicy(
	odata_type = "#microsoft.graph.cloudPcProvisioningPolicy",
	display_name = "HR provisioning policy",
	description = "Provisioning policy for India HR employees",
)

result = await graph_client.device_management.virtual_endpoint.provisioning_policies.by_cloud_pc_provisioning_policy_id('cloudPcProvisioningPolicy-id').patch(request_body)


```
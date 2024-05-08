---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.devicemanagement.virtualendpoint.provisioningpolicies.item.apply.apply_post_request_body import ApplyPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = ApplyPostRequestBody(
	policy_settings = CloudPcPolicySettingType.Region,
)

await graph_client.device_management.virtual_endpoint.provisioning_policies.by_cloud_pc_provisioning_policy_id('cloudPcProvisioningPolicy-id').apply.post(request_body)


```
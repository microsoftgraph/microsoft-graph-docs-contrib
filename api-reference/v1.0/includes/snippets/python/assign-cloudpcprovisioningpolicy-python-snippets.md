---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.assign_post_request_body import AssignPostRequestBody
from msgraph.generated.models.cloud_pc_provisioning_policy_assignment import CloudPcProvisioningPolicyAssignment
from msgraph.generated.models.cloud_pc_management_group_assignment_target import CloudPcManagementGroupAssignmentTarget

graph_client = GraphServiceClient(credentials, scopes)

request_body = AssignPostRequestBody(
	assignments = [
		CloudPcProvisioningPolicyAssignment(
			target = CloudPcManagementGroupAssignmentTarget(
				odata_type = "microsoft.graph.cloudPcManagementGroupAssignmentTarget",
				group_id = "64ff06de-9c00-4a5a-98b5-7f5abe26ffff",
			),
		),
	],
)

await graph_client.device_management.virtual_endpoint.provisioning_policies.by_cloud_pc_provisioning_policy_id('cloudPcProvisioningPolicy-id').assign.post(request_body)


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AssignPostRequestBody()
assignments_cloud_pc_provisioning_policy_assignment1 = CloudPcProvisioningPolicyAssignment()
assignments_cloud_pc_provisioning_policy_assignment1.id = 'b0c2d35f-3385-46c8-a6f5-6c3dfad7708b_64ff06de-9c00-4a5a-98b5-7f5abe26ffff'

assignments_cloud_pc_provisioning_policy_assignment1target = CloudPcManagementGroupAssignmentTarget()
assignments_cloud_pc_provisioning_policy_assignment1target.@odata_type = 'microsoft.graph.cloudPcManagementGroupAssignmentTarget'

assignments_cloud_pc_provisioning_policy_assignment1target.group_id = '64ff06de-9c00-4a5a-98b5-7f5abe26ffff'


assignments_cloud_pc_provisioning_policy_assignment1.target = assignments_cloud_pc_provisioning_policy_assignment1target

assignmentsArray []= assignmentsCloudPcProvisioningPolicyAssignment1;
request_body.assignments(assignmentsArray)





await client.device_management.virtual_endpoint.provisioning_policies.by_provisioning_policie_id('cloudPcProvisioningPolicy-id').assign.post(request_body = request_body)


```
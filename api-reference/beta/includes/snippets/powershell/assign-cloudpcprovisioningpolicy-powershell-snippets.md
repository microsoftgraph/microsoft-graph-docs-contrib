---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement.Actions

$params = @{
	"@odata.type" = "#microsoft.graph.cloudPcProvisioningPolicyAssignment"
	Assignments = @(
		@{
			Id = "b0c2d35f-3385-46c8-a6f5-6c3dfad7708b_64ff06de-9c00-4a5a-98b5-7f5abe26ffff"
			Target = @{
				"@odata.type" = "microsoft.graph.cloudPcManagementGroupAssignmentTarget"
				GroupId = "64ff06de-9c00-4a5a-98b5-7f5abe26ffff"
			}
		}
	)
}

Set-MgDeviceManagementVirtualEndpointProvisioningPolicy -CloudPcProvisioningPolicyId $cloudPcProvisioningPolicyId -BodyParameter $params

```
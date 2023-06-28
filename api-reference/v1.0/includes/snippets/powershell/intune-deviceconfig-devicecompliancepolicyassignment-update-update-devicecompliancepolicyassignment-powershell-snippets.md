---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement

$params = @{
	"@odata.type" = "#microsoft.graph.deviceCompliancePolicyAssignment"
	target = @{
		"@odata.type" = "microsoft.graph.configurationManagerCollectionAssignmentTarget"
		collectionId = "Collection Id value"
	}
}

Update-MgDeviceManagementDeviceCompliancePolicyAssignment -DeviceCompliancePolicyId $deviceCompliancePolicyId -DeviceCompliancePolicyAssignmentId $deviceCompliancePolicyAssignmentId -BodyParameter $params

```
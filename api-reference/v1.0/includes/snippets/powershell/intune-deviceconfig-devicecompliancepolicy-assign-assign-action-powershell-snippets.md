---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement

$params = @{
	assignments = @(
		@{
			"@odata.type" = "#microsoft.graph.deviceCompliancePolicyAssignment"
			id = "92dc3fef-3fef-92dc-ef3f-dc92ef3fdc92"
			target = @{
				"@odata.type" = "microsoft.graph.configurationManagerCollectionAssignmentTarget"
				collectionId = "Collection Id value"
			}
		}
	)
}

Set-MgDeviceManagementDeviceCompliancePolicy -DeviceCompliancePolicyId $deviceCompliancePolicyId -BodyParameter $params

```
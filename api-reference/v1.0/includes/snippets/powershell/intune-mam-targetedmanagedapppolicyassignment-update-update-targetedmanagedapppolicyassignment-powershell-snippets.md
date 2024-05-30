---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Devices.CorporateManagement

$params = @{
	"@odata.type" = "#microsoft.graph.targetedManagedAppPolicyAssignment"
	target = @{
		"@odata.type" = "microsoft.graph.configurationManagerCollectionAssignmentTarget"
		collectionId = "Collection Id value"
	}
}

Update-MgDeviceAppManagementiOSManagedAppProtectionAssignment -IosManagedAppProtectionId $iosManagedAppProtectionId -TargetedManagedAppPolicyAssignmentId $targetedManagedAppPolicyAssignmentId -BodyParameter $params

```
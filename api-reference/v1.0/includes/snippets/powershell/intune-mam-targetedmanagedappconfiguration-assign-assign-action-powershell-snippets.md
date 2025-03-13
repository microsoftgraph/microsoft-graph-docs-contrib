---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Devices.CorporateManagement

$params = @{
	assignments = @(
		@{
			"@odata.type" = "#microsoft.graph.targetedManagedAppPolicyAssignment"
			id = "8b68c4a6-c4a6-8b68-a6c4-688ba6c4688b"
			target = @{
				"@odata.type" = "microsoft.graph.configurationManagerCollectionAssignmentTarget"
				collectionId = "Collection Id value"
			}
		}
	)
}

Set-MgDeviceAppManagementTargetedManagedAppConfiguration -TargetedManagedAppConfigurationId $targetedManagedAppConfigurationId -BodyParameter $params

```
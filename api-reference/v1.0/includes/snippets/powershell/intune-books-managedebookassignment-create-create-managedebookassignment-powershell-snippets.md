---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Devices.CorporateManagement

$params = @{
	"@odata.type" = "#microsoft.graph.managedEBookAssignment"
	target = @{
		"@odata.type" = "microsoft.graph.allLicensedUsersAssignmentTarget"
	}
	installIntent = "required"
}

New-MgDeviceAppManagementManagedEBookAssignment -ManagedEBookId $managedEBookId -BodyParameter $params

```
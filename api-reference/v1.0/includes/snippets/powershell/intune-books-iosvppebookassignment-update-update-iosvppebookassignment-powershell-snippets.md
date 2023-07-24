---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Devices.CorporateManagement

$params = @{
	"@odata.type" = "#microsoft.graph.iosVppEBookAssignment"
	target = @{
		"@odata.type" = "microsoft.graph.deviceAndAppManagementAssignmentTarget"
	}
	installIntent = "required"
}

Update-MgDeviceAppMgtManagedEBookAssignment -ManagedEBookId $managedEBookId -ManagedEBookAssignmentId $managedEBookAssignmentId -BodyParameter $params

```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Devices.CorporateManagement

$params = @{
	"@odata.type" = "#microsoft.graph.managedAppOperation"
	displayName = "Display Name value"
	state = "State value"
	version = "Version value"
}

New-MgDeviceAppMgtManagedAppRegistrationOperation -ManagedAppRegistrationId $managedAppRegistrationId -BodyParameter $params

```
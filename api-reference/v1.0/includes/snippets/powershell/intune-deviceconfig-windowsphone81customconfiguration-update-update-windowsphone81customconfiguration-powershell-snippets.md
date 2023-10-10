---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement

$params = @{
	"@odata.type" = "#microsoft.graph.windowsPhone81CustomConfiguration"
	description = "Description value"
	displayName = "Display Name value"
	version = 7
	omaSettings = @(
		@{
			"@odata.type" = "microsoft.graph.omaSetting"
			displayName = "Display Name value"
			description = "Description value"
			omaUri = "Oma Uri value"
		}
	)
}

Update-MgDeviceManagementDeviceConfiguration -DeviceConfigurationId $deviceConfigurationId -BodyParameter $params

```
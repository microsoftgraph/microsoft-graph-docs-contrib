---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement

$params = @{
	"@odata.type" = "#microsoft.graph.iosUpdateConfiguration"
	description = "Description value"
	displayName = "Display Name value"
	version = 7
	activeHoursStart = "12:00:05.5020000"
	activeHoursEnd = "11:59:00.8990000"
	scheduledInstallDays = @(
		"monday"
	)
	utcTimeOffsetInMinutes = 
}

New-MgDeviceManagementDeviceConfiguration -BodyParameter $params

```
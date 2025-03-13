---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement.Administration

$params = @{
	"@odata.type" = "#microsoft.graph.cloudPcUserSetting"
	displayName = "Example"
	localAdminEnabled = $true
	restorePointSetting = @{
		frequencyType = "sixteenHours"
		userRestoreEnabled = $true
	}
}

New-MgDeviceManagementVirtualEndpointUserSetting -BodyParameter $params

```
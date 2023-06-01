---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement.Administration

$params = @{
	"@odata.type" = "#microsoft.graph.cloudPcUserSetting"
	displayName = "Example"
	selfServiceEnabled = $false
	localAdminEnabled = $true
	restorePointSetting = @{
		frequencyInHours = 16
		userRestoreEnabled = $true
	}
}

New-MgDeviceManagementVirtualEndpointUserSetting -BodyParameter $params

```
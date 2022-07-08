---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement.Administration

$params = @{
	"@odata.type" = "#microsoft.graph.cloudPcUserSetting"
	DisplayName = "Example"
	SelfServiceEnabled = $true
	RestorePointSetting = @{
		FrequencyInHours = 16
		UserRestoreEnabled = $true
	}
	LocalAdminEnabled = $false
}

Update-MgDeviceManagementVirtualEndpointUserSetting -CloudPcUserSettingId $cloudPcUserSettingId -BodyParameter $params

```
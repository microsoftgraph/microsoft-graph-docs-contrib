---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement.Administration

$params = @{
	"@odata.type" = "#microsoft.graph.cloudPcOrganizationSettings"
	UserAccountType = "standardUser"
	OsVersion = "windows11"
}

Update-MgDeviceManagementVirtualEndpointOrganizationSetting -BodyParameter $params

```
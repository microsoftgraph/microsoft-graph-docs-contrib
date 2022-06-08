---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement.Administration

$params = @{
	"@odata.type" = "#microsoft.graph.cloudPcOrganizationSettings"
	UserAccountType = "standardUser"
	OsVersion = "windows11"
	WindowsSettings = @{
		Language = "en-US"
	}
}

Update-MgDeviceManagementVirtualEndpointOrganizationSetting -BodyParameter $params

```
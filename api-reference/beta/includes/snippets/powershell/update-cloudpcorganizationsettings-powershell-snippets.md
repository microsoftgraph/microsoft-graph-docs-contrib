---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement.Administration

$params = @{
	"@odata.type" = "#microsoft.graph.cloudPcOrganizationSettings"
	EnableMEMAutoEnroll = $true
	OsVersion = "windows11"
	UserAccountType = "standardUser"
	WindowsSettings = @{
		Language = "en-US"
	}
}

Update-MgDeviceManagementVirtualEndpointOrganizationSetting -BodyParameter $params

```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement.Administration

$params = @{
	"@odata.type" = "#microsoft.graph.cloudPcExternalPartnerSetting"
	PartnerId = "198d7140-80bb-4843-8cc4-811377a49a92"
	EnableConnection = $true
}

New-MgDeviceManagementVirtualEndpointExternalPartnerSetting -BodyParameter $params

```
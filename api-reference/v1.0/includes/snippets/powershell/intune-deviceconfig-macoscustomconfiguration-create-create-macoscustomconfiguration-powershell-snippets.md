---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement

$params = @{
	"@odata.type" = "#microsoft.graph.macOSCustomConfiguration"
	description = "Description value"
	displayName = "Display Name value"
	version = 7
	payloadName = "Payload Name value"
	payloadFileName = "Payload File Name value"
	payload = "cGF5bG9hZA=="
}

New-MgDeviceManagementDeviceConfiguration -BodyParameter $params

```
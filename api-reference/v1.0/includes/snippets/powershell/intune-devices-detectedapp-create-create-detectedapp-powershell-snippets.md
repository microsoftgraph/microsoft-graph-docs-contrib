---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement

$params = @{
	"@odata.type" = "#microsoft.graph.detectedApp"
	displayName = "Display Name value"
	version = "Version value"
	sizeInByte = 10
	deviceCount = 11
	publisher = "Publisher value"
	platform = "windows"
}

New-MgDeviceManagementDetectedApp -BodyParameter $params

```
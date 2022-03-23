---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.DirectoryManagement

$params = @{
	ExtensionAttributes = @{
		ExtensionAttribute1 = "BYOD-Device"
	}
}

Update-MgDevice -DeviceId $deviceId -BodyParameter $params

```
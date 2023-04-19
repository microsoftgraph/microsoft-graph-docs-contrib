---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.DirectoryManagement

$params = @{
	extensionAttributes = @{
		extensionAttribute1 = "BYOD-Device"
	}
}

Update-MgDevice -DeviceId $deviceId -BodyParameter $params

```
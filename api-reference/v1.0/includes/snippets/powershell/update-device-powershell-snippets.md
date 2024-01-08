---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.DirectoryManagement

$params = @{
	accountEnabled = $false
}

Update-MgDevice -DeviceId $deviceId -BodyParameter $params

```
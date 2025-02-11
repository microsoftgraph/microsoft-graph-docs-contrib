---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.DirectoryManagement

$params = @{
	hashFunction = "hmacsha256"
}

Update-MgBetaDirectoryAuthenticationMethodDeviceHardwareOathDevice -HardwareOathTokenAuthenticationMethodDeviceId $hardwareOathTokenAuthenticationMethodDeviceId -BodyParameter $params

```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	verificationCode = "588651"
	serialNumber = "TOTP123456"
	displayName = "Amy Masters Token"
}

# A UPN can also be used as -UserId.
Set-MgBetaUserAuthenticationHardwareOathMethodAndActivateBySerialNumber -UserId $userId -BodyParameter $params

```
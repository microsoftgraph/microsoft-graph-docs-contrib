---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	phoneNumber = "+1 2065555555"
	phoneType = "mobile"
}

# A UPN can also be used as -UserId.
New-MgUserAuthenticationPhoneMethod -UserId $userId -BodyParameter $params

```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	phoneNumber = "+1 2065555555"
	phoneType = "mobile"
}

New-MgBetaUserAuthenticationPhoneMethod -UserId $userId -BodyParameter $params

```
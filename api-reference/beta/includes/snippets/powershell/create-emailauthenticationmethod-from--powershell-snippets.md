---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	emailAddress = "kim@contoso.com"
}

New-MgBetaUserAuthenticationEmailMethod -UserId $userId -BodyParameter $params

```
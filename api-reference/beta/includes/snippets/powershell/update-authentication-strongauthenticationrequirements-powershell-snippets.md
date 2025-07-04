---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	perUserMfaState = "disabled"
}

Update-MgBetaUserAuthenticationRequirement -UserId $userId -BodyParameter $params

```
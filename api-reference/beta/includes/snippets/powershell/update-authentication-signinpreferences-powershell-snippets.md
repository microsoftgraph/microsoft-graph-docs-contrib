---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	userPreferredMethodForSecondaryAuthentication = "oath"
}

Update-MgBetaUserAuthenticationSignInPreference -UserId $userId -BodyParameter $params

```
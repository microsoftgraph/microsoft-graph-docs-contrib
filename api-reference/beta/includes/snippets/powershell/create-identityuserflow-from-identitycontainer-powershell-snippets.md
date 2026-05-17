---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	id = "Pol1"
	userFlowType = "signUpOrSignIn"
	userFlowTypeVersion = 1
}

New-MgBetaIdentityUserFlow -BodyParameter $params

```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	Id = "Pol1"
	UserFlowType = "signUpOrSignIn"
	UserFlowTypeVersion = 1
}

New-MgIdentityUserFlow -BodyParameter $params

```
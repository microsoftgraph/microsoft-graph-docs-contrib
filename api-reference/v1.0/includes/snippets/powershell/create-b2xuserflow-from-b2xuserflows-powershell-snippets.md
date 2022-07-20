---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	Id = "Partner"
	UserFlowType = "signUpOrSignIn"
	UserFlowTypeVersion = 1
}

New-MgIdentityB2XUserFlow -BodyParameter $params

```
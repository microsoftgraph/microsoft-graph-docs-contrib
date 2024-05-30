---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	"@odata.id" = "https://graph.microsoft.com/beta/identity/apiConnectors/{id}"
}

Set-MgBetaIdentityB2XUserFlowPostFederationSignupByRef -B2xIdentityUserFlowId $b2xIdentityUserFlowId -BodyParameter $params

```
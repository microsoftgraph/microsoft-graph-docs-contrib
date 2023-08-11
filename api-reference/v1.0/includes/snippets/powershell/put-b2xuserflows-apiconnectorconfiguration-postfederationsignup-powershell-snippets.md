---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	"@odata.id" = "https://graph.microsoft.com/v1.0/identity/apiConnectors/{id}"
}

Set-MgIdentityB2XUserFlowPostFederationSignupByRef -B2xIdentityUserFlowId $b2xIdentityUserFlowId -BodyParameter $params

```
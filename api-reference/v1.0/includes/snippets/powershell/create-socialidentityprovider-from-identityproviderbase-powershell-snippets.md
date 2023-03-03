---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	"@odata.type" = "microsoft.graph.socialIdentityProvider"
	DisplayName = "Login with Amazon"
	IdentityProviderType = "Amazon"
	ClientId = "56433757-cadd-4135-8431-2c9e3fd68ae8"
	ClientSecret = "000000000000"
}

New-MgIdentityProvider -BodyParameter $params

```
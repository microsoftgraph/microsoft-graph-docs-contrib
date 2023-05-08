---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	"@odata.type" = "microsoft.graph.openIdConnectIdentityProvider"
	displayName = "Login with the Contoso identity provider"
	clientId = "56433757-cadd-4135-8431-2c9e3fd68ae8"
	clientSecret = "12345"
	domainHint = "mycustomoidc"
	metadataUrl = "https://mycustomoidc.com/.well-known/openid-configuration"
	responseMode = "form_post"
	responseType = "code"
	scope = "openid"
}

New-MgIdentityProvider -BodyParameter $params

```
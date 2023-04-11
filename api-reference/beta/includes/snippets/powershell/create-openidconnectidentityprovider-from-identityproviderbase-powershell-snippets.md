---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	"@odata.type" = "microsoft.graph.openIdConnectIdentityProvider"
	DisplayName = "Login with the Contoso identity provider"
	ClientId = "56433757-cadd-4135-8431-2c9e3fd68ae8"
	ClientSecret = "12345"
	DomainHint = "mycustomoidc"
	MetadataUrl = "https://mycustomoidc.com/.well-known/openid-configuration"
	ResponseMode = "form_post"
	ResponseType = "code"
	Scope = "openid"
}

New-MgIdentityProvider -BodyParameter $params

```
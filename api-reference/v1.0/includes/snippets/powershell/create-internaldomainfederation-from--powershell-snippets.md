---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.DirectoryManagement

$params = @{
	"@odata.type" = "#microsoft.graph.internalDomainFederation"
	DisplayName = "Contoso"
	IssuerUri = "http://contoso.com/adfs/services/trust"
	MetadataExchangeUri = "https://sts.contoso.com/adfs/services/trust/mex"
	SigningCertificate = "MIIE3jCCAsagAwIBAgIQQcyDaZz3MI"
	PassiveSignInUri = "https://sts.contoso.com/adfs/ls"
	PreferredAuthenticationProtocol = "wsFed"
	ActiveSignInUri = "https://sts.contoso.com/adfs/services/trust/2005/usernamemixed"
	SignOutUri = "https://sts.contoso.com/adfs/ls"
	PromptLoginBehavior = "nativeSupport"
	IsSignedAuthenticationRequestRequired = $true
	NextSigningCertificate = "MIIE3jCCAsagAwIBAgIQQcyDaZz3MI"
	FederatedIdpMfaBehavior = "rejectMfaByFederatedIdp"
}

New-MgDomainFederationConfiguration -DomainId $domainId -BodyParameter $params

```
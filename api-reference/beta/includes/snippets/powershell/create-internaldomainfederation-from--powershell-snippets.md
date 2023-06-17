---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.DirectoryManagement

$params = @{
	"@odata.type" = "#microsoft.graph.internalDomainFederation"
	displayName = "Contoso"
	issuerUri = "http://contoso.com/adfs/services/trust"
	metadataExchangeUri = "https://sts.contoso.com/adfs/services/trust/mex"
	signingCertificate = "MIIE3jCCAsagAwIBAgIQQcyDaZz3MI"
	passiveSignInUri = "https://sts.contoso.com/adfs/ls"
	preferredAuthenticationProtocol = "wsFed"
	activeSignInUri = "https://sts.contoso.com/adfs/services/trust/2005/usernamemixed"
	signOutUri = "https://sts.contoso.com/adfs/ls"
	promptLoginBehavior = "nativeSupport"
	isSignedAuthenticationRequestRequired = $true
	nextSigningCertificate = "MIIE3jCCAsagAwIBAgIQQcyDaZz3MI"
	federatedIdpMfaBehavior = "rejectMfaByFederatedIdp"
}

New-MgDomainFederationConfiguration -DomainId $domainId -BodyParameter $params

```
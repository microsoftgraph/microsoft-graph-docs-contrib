---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new InternalDomainFederation
{
	OdataType = "#microsoft.graph.internalDomainFederation",
	DisplayName = "Contoso",
	IssuerUri = "http://contoso.com/adfs/services/trust",
	MetadataExchangeUri = "https://sts.contoso.com/adfs/services/trust/mex",
	SigningCertificate = "MIIE3jCCAsagAwIBAgIQQcyDaZz3MI",
	PassiveSignInUri = "https://sts.contoso.com/adfs/ls",
	PreferredAuthenticationProtocol = AuthenticationProtocol.WsFed,
	ActiveSignInUri = "https://sts.contoso.com/adfs/services/trust/2005/usernamemixed",
	SignOutUri = "https://sts.contoso.com/adfs/ls",
	PromptLoginBehavior = PromptLoginBehavior.NativeSupport,
	IsSignedAuthenticationRequestRequired = true,
	NextSigningCertificate = "MIIE3jCCAsagAwIBAgIQQcyDaZz3MI",
	FederatedIdpMfaBehavior = FederatedIdpMfaBehavior.RejectMfaByFederatedIdp,
	PasswordResetUri = "https://sts.contoso.com/adfs/passwordReset",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Domains["{domain-id}"].FederationConfiguration.PostAsync(requestBody);


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

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
};
var result = await graphClient.Domains["{domain-id}"].FederationConfiguration.PostAsync(requestBody);


```
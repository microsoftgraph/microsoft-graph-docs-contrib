---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var samlOrWsFedExternalDomainFederation = new SamlOrWsFedExternalDomainFederation
{
	DisplayName = "Contoso name change",
	IssuerUri = "http://contoso-test.com/adfs/services/trust",
	MetadataExchangeUri = null,
	SigningCertificate = "M66C6DCCAdCgAwIBAgIQQ6vYJIVKQ",
	PassiveSignInUri = "https://contoso-test.com/adfs/ls/",
	PreferredAuthenticationProtocol = AuthenticationProtocol.WsFed
};

await graphClient.Directory.FederationConfigurations["{samlOrWsFedExternalDomainFederation-id}"]
	.Request()
	.UpdateAsync(samlOrWsFedExternalDomainFederation);

```
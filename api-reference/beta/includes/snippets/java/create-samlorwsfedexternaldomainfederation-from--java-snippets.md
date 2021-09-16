---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SamlOrWsFedExternalDomainFederation identityProviderBase = new SamlOrWsFedExternalDomainFederation();
identityProviderBase.issuerUri = "https://contoso.com/issuerUri";
identityProviderBase.displayName = "contoso display name";
identityProviderBase.metadataExchangeUri = "https://contoso.com/metadataExchangeUri";
identityProviderBase.passiveSignInUri = "https://contoso.com/signin";
identityProviderBase.preferredAuthenticationProtocol = AuthenticationProtocol.WS_FED;
LinkedList<ExternalDomainName> domainsList = new LinkedList<ExternalDomainName>();
ExternalDomainName domains = new ExternalDomainName();
domains.id = "contoso.com";
domainsList.add(domains);
ExternalDomainNameCollectionResponse externalDomainNameCollectionResponse = new ExternalDomainNameCollectionResponse();
externalDomainNameCollectionResponse.value = domainsList;
ExternalDomainNameCollectionPage externalDomainNameCollectionPage = new ExternalDomainNameCollectionPage(externalDomainNameCollectionResponse, null);
identityProviderBase.domains = externalDomainNameCollectionPage;
identityProviderBase.signingCertificate = "MIIDADCCAeigAwIBAgIQEX41y8r6";

graphClient.directory().federationConfigurations()
	.buildRequest()
	.post(identityProviderBase);

```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SamlOrWsFedExternalDomainFederation samlOrWsFedExternalDomainFederation = new SamlOrWsFedExternalDomainFederation();
samlOrWsFedExternalDomainFederation.displayName = "Contoso name change";
samlOrWsFedExternalDomainFederation.issuerUri = "http://contoso-test.com/adfs/services/trust";
samlOrWsFedExternalDomainFederation.metadataExchangeUri = null;
samlOrWsFedExternalDomainFederation.signingCertificate = "M66C6DCCAdCgAwIBAgIQQ6vYJIVKQ";
samlOrWsFedExternalDomainFederation.passiveSignInUri = "https://contoso-test.com/adfs/ls/";
samlOrWsFedExternalDomainFederation.preferredAuthenticationProtocol = AuthenticationProtocol.WS_FED;

graphClient.directory().federationConfigurations().graph.samlOrWsFedExternalDomainFederation("d5a56845-6845-d5a5-4568-a5d54568a5d5")
	.buildRequest()
	.patch(samlOrWsFedExternalDomainFederation);

```
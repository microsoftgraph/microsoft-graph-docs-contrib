---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

InternalDomainFederation internalDomainFederation = new InternalDomainFederation();
internalDomainFederation.displayName = "Contoso name change";
internalDomainFederation.federatedIdpMfaBehavior = FederatedIdpMfaBehavior.ACCEPT_IF_MFA_DONE_BY_FEDERATED_IDP;

graphClient.domains("contoso.com").federationConfiguration("6601d14b-d113-8f64-fda2-9b5ddda18ecc")
	.buildRequest()
	.patch(internalDomainFederation);

```
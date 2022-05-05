---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

InternalDomainFederation internalDomainFederation = new InternalDomainFederation();
internalDomainFederation.displayName = "Contoso";
internalDomainFederation.issuerUri = "http://contoso.com/adfs/services/trust";
internalDomainFederation.metadataExchangeUri = "https://sts.contoso.com/adfs/services/trust/mex";
internalDomainFederation.signingCertificate = "MIIE3jCCAsagAwIBAgIQQcyDaZz3MI";
internalDomainFederation.passiveSignInUri = "https://sts.contoso.com/adfs/ls";
internalDomainFederation.preferredAuthenticationProtocol = AuthenticationProtocol.WS_FED;
internalDomainFederation.activeSignInUri = "https://sts.contoso.com/adfs/services/trust/2005/usernamemixed";
internalDomainFederation.signOutUri = "https://sts.contoso.com/adfs/ls";
internalDomainFederation.promptLoginBehavior = PromptLoginBehavior.NATIVE_SUPPORT;
internalDomainFederation.isSignedAuthenticationRequestRequired = true;
internalDomainFederation.nextSigningCertificate = "MIIE3jCCAsagAwIBAgIQQcyDaZz3MI";
internalDomainFederation.federatedIdpMfaBehavior = FederatedIdpMfaBehavior.REJECT_MFA_BY_FEDERATED_IDP;

graphClient.domains("contoso.com").federationConfiguration()
	.buildRequest()
	.post(internalDomainFederation);

```
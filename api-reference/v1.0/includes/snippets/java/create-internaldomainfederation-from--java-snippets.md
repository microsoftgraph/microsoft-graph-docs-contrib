---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

InternalDomainFederation internalDomainFederation = new InternalDomainFederation();
internalDomainFederation.setOdataType("#microsoft.graph.internalDomainFederation");
internalDomainFederation.setDisplayName("Contoso");
internalDomainFederation.setIssuerUri("http://contoso.com/adfs/services/trust");
internalDomainFederation.setMetadataExchangeUri("https://sts.contoso.com/adfs/services/trust/mex");
internalDomainFederation.setSigningCertificate("MIIE3jCCAsagAwIBAgIQQcyDaZz3MI");
internalDomainFederation.setPassiveSignInUri("https://sts.contoso.com/adfs/ls");
internalDomainFederation.setPreferredAuthenticationProtocol(AuthenticationProtocol.WsFed);
internalDomainFederation.setActiveSignInUri("https://sts.contoso.com/adfs/services/trust/2005/usernamemixed");
internalDomainFederation.setSignOutUri("https://sts.contoso.com/adfs/ls");
internalDomainFederation.setPromptLoginBehavior(PromptLoginBehavior.NativeSupport);
internalDomainFederation.setIsSignedAuthenticationRequestRequired(true);
internalDomainFederation.setNextSigningCertificate("MIIE3jCCAsagAwIBAgIQQcyDaZz3MI");
internalDomainFederation.setFederatedIdpMfaBehavior(FederatedIdpMfaBehavior.RejectMfaByFederatedIdp);
InternalDomainFederation result = graphClient.domains().byDomainId("{domain-id}").federationConfiguration().post(internalDomainFederation);


```
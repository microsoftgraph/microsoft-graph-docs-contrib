---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OpenIdConnectIdentityProvider identityProviderBase = new OpenIdConnectIdentityProvider();
identityProviderBase.setOdataType("microsoft.graph.openIdConnectIdentityProvider");
identityProviderBase.setDisplayName("Login with the Contoso identity provider");
identityProviderBase.setClientId("56433757-cadd-4135-8431-2c9e3fd68ae8");
identityProviderBase.setClientSecret("12345");
ClaimsMapping claimsMapping = new ClaimsMapping();
claimsMapping.setUserId("myUserId");
claimsMapping.setGivenName("myGivenName");
claimsMapping.setSurname("mySurname");
claimsMapping.setEmail("myEmail");
claimsMapping.setDisplayName("myDisplayName");
identityProviderBase.setClaimsMapping(claimsMapping);
identityProviderBase.setDomainHint("mycustomoidc");
identityProviderBase.setMetadataUrl("https://mycustomoidc.com/.well-known/openid-configuration");
identityProviderBase.setResponseMode(OpenIdConnectResponseMode.Form_post);
identityProviderBase.setResponseType(EnumSet.of(OpenIdConnectResponseTypes.Code));
identityProviderBase.setScope("openid");
IdentityProviderBase result = graphClient.identity().identityProviders().post(identityProviderBase);


```
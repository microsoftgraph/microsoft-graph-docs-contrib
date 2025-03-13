---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OpenIdConnectIdentityProvider identityProviderBase = new OpenIdConnectIdentityProvider();
identityProviderBase.setOdataType("microsoft.graph.openIdConnectIdentityProvider");
identityProviderBase.setDisplayName("Contoso");
identityProviderBase.setClientId("00001111-aaaa-2222-bbbb-3333cccc4444");
identityProviderBase.setClientSecret("4294967296");
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
---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OpenIdConnectProvider identityProvider = new OpenIdConnectProvider();
identityProvider.setOdataType("microsoft.graph.openIdConnectProvider");
identityProvider.setName("Login with the Contoso identity provider");
identityProvider.setType("OpenIDConnect");
identityProvider.setClientId("56433757-cadd-4135-8431-2c9e3fd68ae8");
identityProvider.setClientSecret("12345");
ClaimsMapping claimsMapping = new ClaimsMapping();
claimsMapping.setUserId("myUserId");
claimsMapping.setGivenName("myGivenName");
claimsMapping.setSurname("mySurname");
claimsMapping.setEmail("myEmail");
claimsMapping.setDisplayName("myDisplayName");
identityProvider.setClaimsMapping(claimsMapping);
identityProvider.setDomainHint("mycustomoidc");
identityProvider.setMetadataUrl("https://mycustomoidc.com/.well-known/openid-configuration");
identityProvider.setResponseMode(OpenIdConnectResponseMode.Form_post);
identityProvider.setResponseType(EnumSet.of(OpenIdConnectResponseTypes.Code));
identityProvider.setScope("openid");
IdentityProvider result = graphClient.identityProviders().post(identityProvider);


```
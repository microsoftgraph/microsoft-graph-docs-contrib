---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OpenIdConnectIdentityProvider identityProviderBase = new OpenIdConnectIdentityProvider();
identityProviderBase.setOdataType("#microsoft.graph.openIdConnectIdentityProvider");
identityProviderBase.setResponseType(EnumSet.of(OpenIdConnectResponseTypes.Id_token));
IdentityProviderBase result = graphClient.identity().identityProviders().byIdentityProviderBaseId("{identityProviderBase-id}").patch(identityProviderBase);


```
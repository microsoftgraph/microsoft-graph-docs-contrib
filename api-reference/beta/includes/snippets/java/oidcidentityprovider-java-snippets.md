---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OidcIdentityProvider identityProviderBase = new OidcIdentityProvider();
identityProviderBase.setOdataType("#microsoft.graph.oidcIdentityProvider");
identityProviderBase.setDisplayName("Contoso");
IdentityProviderBase result = graphClient.identity().identityProviders().byIdentityProviderBaseId("{identityProviderBase-id}").patch(identityProviderBase);


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

SocialIdentityProvider identityProviderBase = new SocialIdentityProvider();
identityProviderBase.setOdataType("#microsoft.graph.socialIdentityProvider");
identityProviderBase.setClientSecret("1111111111111");
IdentityProviderBase result = graphClient.identity().identityProviders().byIdentityProviderBaseId("{identityProviderBase-id}").patch(identityProviderBase);


```
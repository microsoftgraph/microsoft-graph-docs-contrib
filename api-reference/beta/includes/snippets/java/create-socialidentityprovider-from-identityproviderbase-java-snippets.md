---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

SocialIdentityProvider identityProviderBase = new SocialIdentityProvider();
identityProviderBase.setOdataType("microsoft.graph.socialIdentityProvider");
identityProviderBase.setDisplayName("Login with Amazon");
identityProviderBase.setIdentityProviderType("Amazon");
identityProviderBase.setClientId("00001111-aaaa-2222-bbbb-3333cccc4444");
identityProviderBase.setClientSecret("42*****96");
IdentityProviderBase result = graphClient.identity().identityProviders().post(identityProviderBase);


```
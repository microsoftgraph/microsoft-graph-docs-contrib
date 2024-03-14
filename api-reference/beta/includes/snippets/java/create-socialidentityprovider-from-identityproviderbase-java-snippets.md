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
identityProviderBase.setClientId("56433757-cadd-4135-8431-2c9e3fd68ae8");
identityProviderBase.setClientSecret("000000000000");
IdentityProviderBase result = graphClient.identity().identityProviders().post(identityProviderBase);


```
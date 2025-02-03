---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AppleManagedIdentityProvider identityProviderBase = new AppleManagedIdentityProvider();
identityProviderBase.setOdataType("microsoft.graph.appleManagedIdentityProvider");
identityProviderBase.setDisplayName("Sign in with Apple");
identityProviderBase.setDeveloperId("UBF8T346G9");
identityProviderBase.setServiceId("com.microsoft.rts.b2c.test.client");
identityProviderBase.setKeyId("99P6D879C4");
identityProviderBase.setCertificateData("******");
IdentityProviderBase result = graphClient.identity().identityProviders().post(identityProviderBase);


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AppleManagedIdentityProvider identityProviderBase = new AppleManagedIdentityProvider();
identityProviderBase.setOdataType("microsoft.graph.appleManagedIdentityProvider");
identityProviderBase.setDisplayName("Apple");
identityProviderBase.setDeveloperId("qazx.1234");
identityProviderBase.setServiceId("com.contoso.app");
identityProviderBase.setKeyId("4294967296");
identityProviderBase.setCertificateData("******");
IdentityProviderBase result = graphClient.identity().identityProviders().post(identityProviderBase);


```
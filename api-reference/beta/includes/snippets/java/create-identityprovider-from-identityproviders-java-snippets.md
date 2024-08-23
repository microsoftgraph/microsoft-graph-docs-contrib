---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

IdentityProvider identityProvider = new IdentityProvider();
identityProvider.setOdataType("microsoft.graph.identityProvider");
identityProvider.setName("Login with Amazon");
identityProvider.setType("Amazon");
identityProvider.setClientId("56433757-cadd-4135-8431-2c9e3fd68ae8");
identityProvider.setClientSecret("000000000000");
IdentityProvider result = graphClient.identityProviders().post(identityProvider);


```
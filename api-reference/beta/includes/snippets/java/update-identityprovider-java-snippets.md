---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

IdentityProvider identityProvider = new IdentityProvider();
identityProvider.setClientSecret("1111111111111");
IdentityProvider result = graphClient.identityProviders().byIdentityProviderId("{identityProvider-id}").patch(identityProvider);


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

IdentityProvider identityProvider = new IdentityProvider();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("responseType", "id_token");
identityProvider.setAdditionalData(additionalData);
IdentityProvider result = graphClient.identityProviders().byIdentityProviderId("{identityProvider-id}").patch(identityProvider);


```
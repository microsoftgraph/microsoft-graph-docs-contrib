---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.serviceprincipals.item.removekey.RemoveKeyPostRequestBody removeKeyPostRequestBody = new com.microsoft.graph.serviceprincipals.item.removekey.RemoveKeyPostRequestBody();
removeKeyPostRequestBody.setKeyId(UUID.fromString("f0b0b335-1d71-4883-8f98-567911bfdca6"));
removeKeyPostRequestBody.setProof("eyJ0eXAiOiJ...");
graphClient.servicePrincipals().byServicePrincipalId("{servicePrincipal-id}").removeKey().post(removeKeyPostRequestBody);


```
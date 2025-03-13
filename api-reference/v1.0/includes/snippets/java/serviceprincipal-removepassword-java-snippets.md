---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.serviceprincipals.item.removepassword.RemovePasswordPostRequestBody removePasswordPostRequestBody = new com.microsoft.graph.serviceprincipals.item.removepassword.RemovePasswordPostRequestBody();
removePasswordPostRequestBody.setKeyId(UUID.fromString("f0b0b335-1d71-4883-8f98-567911bfdca6"));
graphClient.servicePrincipals().byServicePrincipalId("{servicePrincipal-id}").removePassword().post(removePasswordPostRequestBody);


```
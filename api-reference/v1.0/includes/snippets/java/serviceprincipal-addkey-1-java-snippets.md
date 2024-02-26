---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.serviceprincipals.item.addkey.AddKeyPostRequestBody addKeyPostRequestBody = new com.microsoft.graph.serviceprincipals.item.addkey.AddKeyPostRequestBody();
KeyCredential keyCredential = new KeyCredential();
keyCredential.setType("AsymmetricX509Cert");
keyCredential.setUsage("Verify");
byte[] key = Base64.getDecoder().decode("MIIDYDCCAki...");
keyCredential.setKey(key);
addKeyPostRequestBody.setKeyCredential(keyCredential);
addKeyPostRequestBody.setPasswordCredential(null);
addKeyPostRequestBody.setProof("eyJ0eXAiOiJ...");
KeyCredential result = graphClient.servicePrincipals().byServicePrincipalId("{servicePrincipal-id}").addKey().post(addKeyPostRequestBody);


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.trustframework.keysets.item.uploadsecret.UploadSecretPostRequestBody uploadSecretPostRequestBody = new com.microsoft.graph.beta.trustframework.keysets.item.uploadsecret.UploadSecretPostRequestBody();
uploadSecretPostRequestBody.setUse("use-value");
uploadSecretPostRequestBody.setK("application-secret-to-be-uploaded");
uploadSecretPostRequestBody.setNbf(1508969811L);
uploadSecretPostRequestBody.setExp(1508973711L);
var result = graphClient.trustFramework().keySets().byTrustFrameworkKeySetId("{trustFrameworkKeySet-id}").uploadSecret().post(uploadSecretPostRequestBody);


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.trustframework.keysets.item.generatekey.GenerateKeyPostRequestBody generateKeyPostRequestBody = new com.microsoft.graph.beta.trustframework.keysets.item.generatekey.GenerateKeyPostRequestBody();
generateKeyPostRequestBody.setUse("sig");
generateKeyPostRequestBody.setKty("RSA");
generateKeyPostRequestBody.setNbf(1508969811L);
generateKeyPostRequestBody.setExp(1508969811L);
var result = graphClient.trustFramework().keySets().byTrustFrameworkKeySetId("{trustFrameworkKeySet-id}").generateKey().post(generateKeyPostRequestBody);


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.domains.item.verify.VerifyPostRequestBody verifyPostRequestBody = new com.microsoft.graph.beta.domains.item.verify.VerifyPostRequestBody();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("forceTakeover", true);
verifyPostRequestBody.setAdditionalData(additionalData);
var result = graphClient.domains().byDomainId("{domain-id}").verify().post(verifyPostRequestBody);


```
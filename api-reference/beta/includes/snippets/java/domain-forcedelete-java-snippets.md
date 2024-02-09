---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.domains.item.forcedelete.ForceDeletePostRequestBody forceDeletePostRequestBody = new com.microsoft.graph.beta.domains.item.forcedelete.ForceDeletePostRequestBody();
forceDeletePostRequestBody.setDisableUserAccounts(true);
graphClient.domains().byDomainId("{domain-id}").forceDelete().post(forceDeletePostRequestBody);


```
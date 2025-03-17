---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.solutions.backuprestore.enable.EnablePostRequestBody enablePostRequestBody = new com.microsoft.graph.beta.solutions.backuprestore.enable.EnablePostRequestBody();
enablePostRequestBody.setAppOwnerTenantId("23014d8c-71fe-4d00-a01a-31850bc5b42a");
var result = graphClient.solutions().backupRestore().enable().post(enablePostRequestBody);


```
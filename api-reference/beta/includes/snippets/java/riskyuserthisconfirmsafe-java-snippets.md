---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.identityprotection.riskyusers.confirmsafe.ConfirmSafePostRequestBody confirmSafePostRequestBody = new com.microsoft.graph.beta.identityprotection.riskyusers.confirmsafe.ConfirmSafePostRequestBody();
LinkedList<String> userIds = new LinkedList<String>();
userIds.add("5a0c76d2-cb57-4ece-9bc1-c323178f116a");
userIds.add("96609214-09ef-4f80-9d4a-ace5fceecaec");
userIds.add("05020696-4eb8-45a3-918f-8f8bb7ad6015");
confirmSafePostRequestBody.setUserIds(userIds);
graphClient.identityProtection().riskyUsers().confirmSafe().post(confirmSafePostRequestBody);


```
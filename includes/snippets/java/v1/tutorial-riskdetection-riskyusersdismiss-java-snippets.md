---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.identityprotection.riskyusers.dismiss.DismissPostRequestBody dismissPostRequestBody = new com.microsoft.graph.identityprotection.riskyusers.dismiss.DismissPostRequestBody();
LinkedList<String> userIds = new LinkedList<String>();
userIds.add("4628e7df-dff3-407c-a08f-75f08c0806dc");
dismissPostRequestBody.setUserIds(userIds);
graphClient.identityProtection().riskyUsers().dismiss().post(dismissPostRequestBody);


```
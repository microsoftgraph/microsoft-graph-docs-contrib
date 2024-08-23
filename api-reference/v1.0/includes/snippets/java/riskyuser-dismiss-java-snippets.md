---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.identityprotection.riskyusers.dismiss.DismissPostRequestBody dismissPostRequestBody = new com.microsoft.graph.identityprotection.riskyusers.dismiss.DismissPostRequestBody();
LinkedList<String> userIds = new LinkedList<String>();
userIds.add("04487ee0-f4f6-4e7f-8999-facc5a30e232");
userIds.add("13387ee0-f4f6-4e7f-8999-facc5120e345");
dismissPostRequestBody.setUserIds(userIds);
graphClient.identityProtection().riskyUsers().dismiss().post(dismissPostRequestBody);


```
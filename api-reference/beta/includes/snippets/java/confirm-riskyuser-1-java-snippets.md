---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.riskyusers.confirmcompromised.ConfirmCompromisedPostRequestBody confirmCompromisedPostRequestBody = new com.microsoft.graph.beta.riskyusers.confirmcompromised.ConfirmCompromisedPostRequestBody();
LinkedList<String> userIds = new LinkedList<String>();
userIds.add("29f270bb-4d23-4f68-8a57-dc73dc0d4caf");
userIds.add("20f91ec9-d140-4d90-9cd9-f618587a1471");
confirmCompromisedPostRequestBody.setUserIds(userIds);
graphClient.riskyUsers().confirmCompromised().post(confirmCompromisedPostRequestBody);


```
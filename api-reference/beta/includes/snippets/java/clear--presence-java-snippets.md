---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.users.item.presence.clearpresence.ClearPresencePostRequestBody clearPresencePostRequestBody = new com.microsoft.graph.beta.users.item.presence.clearpresence.ClearPresencePostRequestBody();
clearPresencePostRequestBody.setSessionId("22553876-f5ab-4529-bffb-cfe50aa89f87");
graphClient.users().byUserId("{user-id}").presence().clearPresence().post(clearPresencePostRequestBody);


```
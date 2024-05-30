---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ConversationThread result = graphClient.groups().byGroupId("{group-id}").threads().byConversationThreadId("{conversationThread-id}").get();


```
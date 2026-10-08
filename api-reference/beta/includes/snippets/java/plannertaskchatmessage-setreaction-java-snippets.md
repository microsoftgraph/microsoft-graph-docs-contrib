---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.planner.tasks.item.messages.item.setreaction.SetReactionPostRequestBody setReactionPostRequestBody = new com.microsoft.graph.beta.planner.tasks.item.messages.item.setreaction.SetReactionPostRequestBody();
setReactionPostRequestBody.setReactionType("like");
graphClient.planner().tasks().byPlannerTaskId("{plannerTask-id}").messages().byPlannerTaskChatMessageId("{plannerTaskChatMessage-id}").setReaction().post(setReactionPostRequestBody);


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

PlannerTaskChatMessage plannerTaskChatMessage = new PlannerTaskChatMessage();
plannerTaskChatMessage.setContent("This is a new chat message");
PlannerTaskChatMessage result = graphClient.planner().tasks().byPlannerTaskId("{plannerTask-id}").messages().post(plannerTaskChatMessage);


```
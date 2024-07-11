---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.planner.plans.item.unarchive.UnarchivePostRequestBody unarchivePostRequestBody = new com.microsoft.graph.beta.planner.plans.item.unarchive.UnarchivePostRequestBody();
unarchivePostRequestBody.setJustification("String");
graphClient.planner().plans().byPlannerPlanId("{plannerPlan-id}").unarchive().post(unarchivePostRequestBody);


```
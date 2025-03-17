---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.planner.plans.item.archive.ArchivePostRequestBody archivePostRequestBody = new com.microsoft.graph.beta.planner.plans.item.archive.ArchivePostRequestBody();
archivePostRequestBody.setJustification("String");
graphClient.planner().plans().byPlannerPlanId("{plannerPlan-id}").archive().post(archivePostRequestBody);


```
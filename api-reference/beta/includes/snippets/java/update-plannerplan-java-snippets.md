---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

PlannerPlan plannerPlan = new PlannerPlan();
plannerPlan.setTitle("title-value");
PlannerPlan result = graphClient.planner().plans().byPlannerPlanId("{plannerPlan-id}").patch(plannerPlan, requestConfiguration -> {
	requestConfiguration.headers.add("Prefer", "return=representation");
	requestConfiguration.headers.add("If-Match", "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"");
});


```
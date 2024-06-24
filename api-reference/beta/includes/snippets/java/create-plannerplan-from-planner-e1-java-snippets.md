---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

PlannerPlan plannerPlan = new PlannerPlan();
PlannerPlanContainer container = new PlannerPlanContainer();
container.setUrl("https://graph.microsoft.com/beta/groups/ebf3b108-5234-4e22-b93d-656d7dae5874");
plannerPlan.setContainer(container);
plannerPlan.setTitle("title-value");
PlannerPlan result = graphClient.planner().plans().post(plannerPlan);


```
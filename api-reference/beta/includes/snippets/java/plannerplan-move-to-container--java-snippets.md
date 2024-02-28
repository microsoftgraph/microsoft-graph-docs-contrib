---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.planner.plans.item.movetocontainer.MoveToContainerPostRequestBody moveToContainerPostRequestBody = new com.microsoft.graph.beta.planner.plans.item.movetocontainer.MoveToContainerPostRequestBody();
PlannerPlanContainer container = new PlannerPlanContainer();
container.setContainerId("groupId");
container.setType(PlannerContainerType.Group);
moveToContainerPostRequestBody.setContainer(container);
var result = graphClient.planner().plans().byPlannerPlanId("{plannerPlan-id}").moveToContainer().post(moveToContainerPostRequestBody, requestConfiguration -> {
	requestConfiguration.headers.add("If-Match", "\"string\"");
});


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("If-Match", "\"string\""));

PlannerPlanContainer container = new PlannerPlanContainer();
container.containerId = "groupId";
container.type = PlannerContainerType.GROUP;

graphClient.planner().plans("planId")
	.moveToContainer(PlannerPlanMoveToContainerParameterSet
		.newBuilder()
		.withContainer(container)
		.build())
	.buildRequest( requestOptions )
	.post();

```
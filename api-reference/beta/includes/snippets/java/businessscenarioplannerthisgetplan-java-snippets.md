---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

BusinessScenarioGroupTarget target = new BusinessScenarioGroupTarget();
target.taskTargetKind = PlannerTaskTargetKind.GROUP;
target.groupId = "7a339254-4b2b-4410-b295-c890a16776ee";

graphClient.solutions().businessScenarios("c5d514e6c6864911ac46c720affb6e4d").planner()
	.getPlan(BusinessScenarioPlannerGetPlanParameterSet
		.newBuilder()
		.withTarget(target)
		.build())
	.buildRequest()
	.post();

```
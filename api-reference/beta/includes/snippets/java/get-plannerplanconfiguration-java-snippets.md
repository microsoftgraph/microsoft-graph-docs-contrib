---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PlannerPlanConfiguration plannerPlanConfiguration = graphClient.solutions().businessScenarios("c5d514e6c6864911ac46c720affb6e4d").planner().planConfiguration()
	.buildRequest()
	.get();

```
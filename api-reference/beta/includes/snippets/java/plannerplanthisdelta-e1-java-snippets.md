---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PlannerPlanDeltaCollectionPage delta = graphClient.planner().rosters("-W4K7hIak0WlAwgJCn1sEWQABgjH").plans()
	.delta()
	.buildRequest()
	.get();

```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IPlannerPlanCollectionWithReferencesPage plans = graphClient.planner().rosters("6519868f-868f-6519-8f86-19658f861965").plans()
	.buildRequest()
	.get();

```
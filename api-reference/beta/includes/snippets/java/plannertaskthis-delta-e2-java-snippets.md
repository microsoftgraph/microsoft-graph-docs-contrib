---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PlannerTaskDeltaCollectionPage delta = graphClient.me().planner().tasks()
	.delta()
	.buildRequest()
	.get();

```
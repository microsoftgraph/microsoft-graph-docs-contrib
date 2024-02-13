---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PlannerTaskCollectionPage myDayTasks = graphClient.me().planner().myDayTasks()
	.buildRequest()
	.get();

```
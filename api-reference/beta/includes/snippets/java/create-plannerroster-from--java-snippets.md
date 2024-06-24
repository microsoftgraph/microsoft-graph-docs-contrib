---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

PlannerRoster plannerRoster = new PlannerRoster();
plannerRoster.setOdataType("#microsoft.graph.plannerRoster");
PlannerRoster result = graphClient.planner().rosters().post(plannerRoster);


```
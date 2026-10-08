---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

PlannerHistoryItemCollectionResponse result = graphClient.planner().plans().byPlannerPlanId("{plannerPlan-id}").historyItems().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "occurredDateTime gt 2025-11-01T00:00:00Z and occurredDateTime lt 2025-12-01T00:00:00Z";
});


```
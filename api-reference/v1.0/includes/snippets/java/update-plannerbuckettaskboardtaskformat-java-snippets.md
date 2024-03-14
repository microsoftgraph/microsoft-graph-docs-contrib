---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

PlannerBucketTaskBoardTaskFormat plannerBucketTaskBoardTaskFormat = new PlannerBucketTaskBoardTaskFormat();
plannerBucketTaskBoardTaskFormat.setOrderHint("A6673H Ejkl!");
PlannerBucketTaskBoardTaskFormat result = graphClient.planner().tasks().byPlannerTaskId("{plannerTask-id}").bucketTaskBoardFormat().patch(plannerBucketTaskBoardTaskFormat, requestConfiguration -> {
	requestConfiguration.headers.add("Prefer", "return=representation");
	requestConfiguration.headers.add("If-Match", "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"");
});


```
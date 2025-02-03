---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

PlannerBucket plannerBucket = new PlannerBucket();
plannerBucket.setName("Development");
PlannerBucket result = graphClient.planner().buckets().byPlannerBucketId("{plannerBucket-id}").patch(plannerBucket, requestConfiguration -> {
	requestConfiguration.headers.add("Prefer", "return=representation");
	requestConfiguration.headers.add("If-Match", "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"");
});


```
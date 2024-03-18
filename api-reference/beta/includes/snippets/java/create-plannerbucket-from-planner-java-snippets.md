---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

PlannerBucket plannerBucket = new PlannerBucket();
plannerBucket.setName("Advertising");
plannerBucket.setPlanId("xqQg5FS2LkCp935s-FIFm2QAFkHM");
plannerBucket.setOrderHint(" !");
PlannerBucket result = graphClient.planner().buckets().post(plannerBucket);


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PlannerBucketDeltaCollectionPage delta = graphClient.planner().plans("-W4K7hIak0WlAwgJCn1sEWQABgjH").buckets()
	.delta()
	.buildRequest()
	.get();

```
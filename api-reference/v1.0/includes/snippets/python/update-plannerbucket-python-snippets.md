---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = PlannerBucket(
	name = "Development",
)

request_configuration = PlannerBucketItemRequestBuilder.PlannerBucketItemRequestBuilderPatchRequestConfiguration()
request_configuration.headers.add("Prefer", "return=representation")
request_configuration.headers.add("If-Match", "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"")


result = await graph_client.planner.buckets.by_planner_bucket_id('plannerBucket-id').patch(request_body, request_configuration = request_configuration)


```
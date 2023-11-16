---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = PlannerBucket(
	name = "Development",
)

request_configuration = PlannerBucketItemRequestBuilder.PlannerBucketItemRequestBuilderPatchRequestConfiguration(
headers = {
		'Prefer' : "return=representation",
		'If-Match' : "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"",
}

)

result = await graph_client.planner.buckets.by_planner_bucket_id('plannerBucket-id').patch(request_body, request_configuration = request_configuration)


```
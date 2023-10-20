---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = PlannerBucket(
	name = "Development",
)

request_configuration = PlannerBucketRequestBuilder.PlannerBucketRequestBuilderPatchRequestConfiguration(
headers = {
		'Prefer' : "return=representation",
		'If-Match' : "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"",
}

)

result = await graph_client.planner.buckets.by_bucket_id('plannerBucket-id').patch(body = request_body, request_configuration = request_configuration)


```
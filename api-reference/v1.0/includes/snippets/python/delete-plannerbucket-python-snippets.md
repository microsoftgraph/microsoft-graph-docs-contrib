---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)


request_configuration = PlannerBucketItemRequestBuilder.PlannerBucketItemRequestBuilderDeleteRequestConfiguration(
headers = {
		'If-Match' : "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"",
}

)

await graph_client.planner.buckets.by_planner_bucket_id('plannerBucket-id').delete(request_configuration = request_configuration)


```
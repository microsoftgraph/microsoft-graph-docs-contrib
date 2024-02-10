---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.planner.buckets.item.planner_bucket_item_request_builder import PlannerBucketItemRequestBuilder
from msgraph.generated.models.planner_bucket import PlannerBucket

graph_client = GraphServiceClient(credentials, scopes)

request_body = PlannerBucket(
	name = "Development",
)

request_configuration = PlannerBucketItemRequestBuilder.PlannerBucketItemRequestBuilderPatchRequestConfiguration()
request_configuration.headers.add("Prefer", "return=representation")
request_configuration.headers.add("If-Match", "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"")


result = await graph_client.planner.buckets.by_planner_bucket_id('plannerBucket-id').patch(request_body, request_configuration = request_configuration)


```
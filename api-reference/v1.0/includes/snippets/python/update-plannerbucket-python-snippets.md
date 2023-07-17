---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = PlannerBucket()
request_body.name = 'Development'



request_configuration = PlannerBucketRequestBuilder.PlannerBucketRequestBuilderPatchRequestConfiguration(
headers = {
		'Prefer' : "return=representation",
		'If-Match' : "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"",
}

)


result = await client.planner.buckets.by_bucket_id('plannerBucket-id').patch(request_body = request_body, request_configuration = request_configuration)


```
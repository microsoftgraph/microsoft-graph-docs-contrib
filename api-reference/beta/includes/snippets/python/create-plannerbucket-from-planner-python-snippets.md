---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = PlannerBucket(
	name = "Advertising",
	plan_id = "xqQg5FS2LkCp935s-FIFm2QAFkHM",
	order_hint = " !",
)

result = await graph_client.planner.buckets.post(request_body)


```
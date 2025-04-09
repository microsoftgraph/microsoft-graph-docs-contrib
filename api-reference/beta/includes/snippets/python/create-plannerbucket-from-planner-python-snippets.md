---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.planner_bucket import PlannerBucket
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = PlannerBucket(
	name = "Advertising",
	plan_id = "xqQg5FS2LkCp935s-FIFm2QAFkHM",
	order_hint = " !",
)

result = await graph_client.planner.buckets.post(request_body)


```
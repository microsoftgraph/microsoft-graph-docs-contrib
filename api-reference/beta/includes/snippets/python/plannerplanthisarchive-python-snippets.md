---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.planner.plans.item.archive.archive_post_request_body import ArchivePostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = ArchivePostRequestBody(
	justification = "String",
)

await graph_client.planner.plans.by_planner_plan_id('plannerPlan-id').archive.post(request_body)


```
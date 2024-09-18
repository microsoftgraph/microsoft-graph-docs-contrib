---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.planner.plans.item.unarchive.unarchive_post_request_body import UnarchivePostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = UnarchivePostRequestBody(
	justification = "String",
)

await graph_client.planner.plans.by_planner_plan_id('plannerPlan-id').unarchive.post(request_body)


```
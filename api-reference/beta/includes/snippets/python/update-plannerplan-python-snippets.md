---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.planner.plans.item.planner_plan_item_request_builder import PlannerPlanItemRequestBuilder
from msgraph.generated.models.planner_plan import PlannerPlan

graph_client = GraphServiceClient(credentials, scopes)

request_body = PlannerPlan(
	title = "title-value",
)

request_configuration = PlannerPlanItemRequestBuilder.PlannerPlanItemRequestBuilderPatchRequestConfiguration()
request_configuration.headers.add("Prefer", "return=representation")
request_configuration.headers.add("If-Match", "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"")


result = await graph_client.planner.plans.by_planner_plan_id('plannerPlan-id').patch(request_body, request_configuration = request_configuration)


```
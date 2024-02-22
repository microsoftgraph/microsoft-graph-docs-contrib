---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.planner.plans.item.planner_plan_item_request_builder import PlannerPlanItemRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)


request_configuration = PlannerPlanItemRequestBuilder.PlannerPlanItemRequestBuilderDeleteRequestConfiguration()
request_configuration.headers.add("If-Match", "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"")


await graph_client.planner.plans.by_planner_plan_id('plannerPlan-id').delete(request_configuration = request_configuration)


```
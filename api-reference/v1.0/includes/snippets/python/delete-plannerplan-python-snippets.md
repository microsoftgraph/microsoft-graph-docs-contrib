---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)


request_configuration = PlannerPlanItemRequestBuilder.PlannerPlanItemRequestBuilderDeleteRequestConfiguration()
request_configuration.headers.add("If-Match", "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"")


await graph_client.planner.plans.by_planner_plan_id('plannerPlan-id').delete(request_configuration = request_configuration)


```
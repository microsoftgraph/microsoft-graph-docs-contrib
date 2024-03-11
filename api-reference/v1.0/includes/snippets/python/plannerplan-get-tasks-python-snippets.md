---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.planner.plans.by_planner_plan_id('plannerPlan-id').tasks.get()


```
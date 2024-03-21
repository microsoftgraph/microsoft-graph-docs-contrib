---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.planner.tasks.item.planner_task_item_request_builder import PlannerTaskItemRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)


request_configuration = PlannerTaskItemRequestBuilder.PlannerTaskItemRequestBuilderDeleteRequestConfiguration()
request_configuration.headers.add("If-Match", "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"")


await graph_client.planner.tasks.by_planner_task_id('plannerTask-id').delete(request_configuration = request_configuration)


```
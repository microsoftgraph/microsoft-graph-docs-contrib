---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.planner.tasks.item.planner_task_item_request_builder import PlannerTaskItemRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)


request_configuration = RequestConfiguration()
request_configuration.headers.add("If-Match", "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"")


await graph_client.planner.tasks.by_planner_task_id('plannerTask-id').delete(request_configuration = request_configuration)


```
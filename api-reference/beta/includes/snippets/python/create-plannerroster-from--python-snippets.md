---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = PlannerRoster(
	odata_type = "#microsoft.graph.plannerRoster",
)

result = await graph_client.planner.rosters.post(body = request_body)


```
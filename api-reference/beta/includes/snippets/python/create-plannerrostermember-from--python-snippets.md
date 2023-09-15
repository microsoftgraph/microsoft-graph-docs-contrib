---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = PlannerRosterMember(
	odata_type = "#microsoft.graph.plannerRosterMember",
	user_id = "String",
)

result = await graph_client.planner.rosters.by_roster_id('plannerRoster-id').members.post(body = request_body)


```
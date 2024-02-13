---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.planner_roster_member import PlannerRosterMember

graph_client = GraphServiceClient(credentials, scopes)

request_body = PlannerRosterMember(
	odata_type = "#microsoft.graph.plannerRosterMember",
	user_id = "String",
)

result = await graph_client.planner.rosters.by_planner_roster_id('plannerRoster-id').members.post(request_body)


```
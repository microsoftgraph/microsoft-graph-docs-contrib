---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.planner_roster import PlannerRoster

graph_client = GraphServiceClient(credentials, scopes)

request_body = PlannerRoster(
	odata_type = "#microsoft.graph.plannerRoster",
)

result = await graph_client.planner.rosters.post(request_body)


```
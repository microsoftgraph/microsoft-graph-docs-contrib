---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.scheduling_group import SchedulingGroup

graph_client = GraphServiceClient(credentials, scopes)

request_body = SchedulingGroup(
	display_name = "Cashiers",
	is_active = True,
	code = "CashierCode",
	user_ids = [
		"c5d0c76b-80c4-481c-be50-923cd8d680a1",
		"2a4296b3-a28a-44ba-bc66-0274b9b95851",
	],
)

result = await graph_client.teams.by_team_id('team-id').schedule.scheduling_groups.post(request_body)


```
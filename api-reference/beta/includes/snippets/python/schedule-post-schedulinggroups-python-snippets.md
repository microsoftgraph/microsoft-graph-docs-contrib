---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.scheduling_group import SchedulingGroup
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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
---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.planner_roster_member import PlannerRosterMember
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = PlannerRosterMember(
	odata_type = "#microsoft.graph.plannerRosterMember",
	user_id = "String",
)

result = await graph_client.planner.rosters.by_planner_roster_id('plannerRoster-id').members.post(request_body)


```
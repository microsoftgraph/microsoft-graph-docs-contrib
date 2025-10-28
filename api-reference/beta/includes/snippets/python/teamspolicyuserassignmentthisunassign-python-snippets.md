---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.admin.teams.policy.userassignments.microsoft_graph_teams_administration_unassign.unassign_post_request_body import UnassignPostRequestBody
from msgraph_beta.generated.models.teams_administration.teams_policy_user_assignment import TeamsPolicyUserAssignment
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = UnassignPostRequestBody(
	value = [
		TeamsPolicyUserAssignment(
			odata_type = "#microsoft.graph.teamsAdministration.teamsPolicyUserAssignment",
			user_id = "5c802b19-3600-83f1-1767-7b9edc7f38ab",
			policy_type = "TeamsMeetingPolicy",
		),
	],
)

await graph_client.admin.teams.policy.user_assignments.microsoft_graph_teams_administration_unassign.post(request_body)


```
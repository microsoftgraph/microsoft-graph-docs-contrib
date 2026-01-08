---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.admin.teams.policy.userassignments.microsoft_graph_teams_administration_assign.assign_post_request_body import AssignPostRequestBody
from msgraph_beta.generated.models.teams_administration.teams_policy_user_assignment import TeamsPolicyUserAssignment
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AssignPostRequestBody(
	value = [
		TeamsPolicyUserAssignment(
			odata_type = "#microsoft.graph.teamsAdministration.teamsPolicyUserAssignment",
			user_id = "5c802b19-3600-83f1-1767-7b9edc7f38ab",
			policy_type = "TeamsMeetingPolicy",
			policy_id = "VnMAaN3X2X1B9tEHx1CJWfC76PSaKEzA4NoUuqIMRUo",
		),
	],
)

await graph_client.admin.teams.policy.user_assignments.microsoft_graph_teams_administration_assign.post(request_body)


```
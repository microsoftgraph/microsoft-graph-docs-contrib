---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.teamwork.determine_if_interaction_is_allowed.determine_if_interaction_is_allowed_post_request_body import DetermineIfInteractionIsAllowedPostRequestBody
from msgraph_beta.generated.models.identity import Identity
from msgraph_beta.generated.models.teamwork_user_identity import TeamworkUserIdentity
from msgraph_beta.generated.models.teamwork_interaction_type import TeamworkInteractionType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = DetermineIfInteractionIsAllowedPostRequestBody(
	users = [
		TeamworkUserIdentity(
			odata_type = "microsoft.graph.teamworkUserIdentity",
			id = "59b5bc69-ca73-4ffd-a2e0-88a79115d13b",
			additional_data = {
					"tenant_id" : "b11186db-6149-4b3d-95ad-23c9e1bf6853",
			}
		),
	],
	interaction_type = TeamworkInteractionType.CreateChat,
)

result = await graph_client.teamwork.determine_if_interaction_is_allowed.post(request_body)


```
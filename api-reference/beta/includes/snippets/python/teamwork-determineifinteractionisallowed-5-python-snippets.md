---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.teamwork.determine_if_interaction_is_allowed.determine_if_interaction_is_allowed_post_request_body import DetermineIfInteractionIsAllowedPostRequestBody
from msgraph_beta.generated.models.identity import Identity
from msgraph_beta.generated.models.email_identity import EmailIdentity
from msgraph_beta.generated.models.teamwork_user_identity import TeamworkUserIdentity
from msgraph_beta.generated.models.teamwork_interaction_type import TeamworkInteractionType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = DetermineIfInteractionIsAllowedPostRequestBody(
	users = [
		EmailIdentity(
			odata_type = "microsoft.graph.emailIdentity",
			email = "LauraW@foo.com",
		),
		TeamworkUserIdentity(
			odata_type = "microsoft.graph.teamworkUserIdentity",
			user_principal_name = "MaiaR@foobar.com",
		),
		TeamworkUserIdentity(
			odata_type = "microsoft.graph.teamworkUserIdentity",
			id = "bd6a223f-59b5-46dd-90bc-0ddebaf3da5a",
		),
	],
	interaction_type = TeamworkInteractionType.CreateChat,
)

result = await graph_client.teamwork.determine_if_interaction_is_allowed.post(request_body)


```
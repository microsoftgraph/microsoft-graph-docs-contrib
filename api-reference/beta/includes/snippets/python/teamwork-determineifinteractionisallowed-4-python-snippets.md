---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.teamwork.determine_if_interaction_is_allowed.determine_if_interaction_is_allowed_post_request_body import DetermineIfInteractionIsAllowedPostRequestBody
from msgraph_beta.generated.models.identity import Identity
from msgraph_beta.generated.models.email_identity import EmailIdentity
from msgraph_beta.generated.models.teamwork_interaction_type import TeamworkInteractionType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = DetermineIfInteractionIsAllowedPostRequestBody(
	users = [
		EmailIdentity(
			odata_type = "microsoft.graph.emailIdentity",
			email = "LauraW@contoso.com",
		),
	],
	interaction_type = TeamworkInteractionType.CreateChat,
)

result = await graph_client.teamwork.determine_if_interaction_is_allowed.post(request_body)


```
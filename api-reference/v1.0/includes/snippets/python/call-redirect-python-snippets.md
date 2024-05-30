---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.communications.calls.item.redirect.redirect_post_request_body import RedirectPostRequestBody
from msgraph.generated.models.invitation_participant_info import InvitationParticipantInfo
from msgraph.generated.models.identity_set import IdentitySet
from msgraph.generated.models.identity import Identity

graph_client = GraphServiceClient(credentials, scopes)

request_body = RedirectPostRequestBody(
	targets = [
		InvitationParticipantInfo(
			odata_type = "#microsoft.graph.invitationParticipantInfo",
			identity = IdentitySet(
				odata_type = "#microsoft.graph.identitySet",
				additional_data = {
						"phone" : {
								"@odata_type" : "#microsoft.graph.identity",
								"id" : "+12345678901",
						},
				}
			),
		),
	],
	callback_uri = "https://bot.contoso.com/api/calls/24701998-1a73-4d42-8085-bf46ed0ae039",
)

await graph_client.communications.calls.by_call_id('call-id').redirect.post(request_body)


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.communications.calls.item.participants.invite.invite_post_request_body import InvitePostRequestBody
from msgraph_beta.generated.models.invitation_participant_info import InvitationParticipantInfo
from msgraph_beta.generated.models.identity_set import IdentitySet
from msgraph_beta.generated.models.identity import Identity
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = InvitePostRequestBody(
	participants = [
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
	client_context = "f2fa86af-3c51-4bc2-8fc0-475452d9764f",
)

result = await graph_client.communications.calls.by_call_id('call-id').participants.invite.post(request_body)


```
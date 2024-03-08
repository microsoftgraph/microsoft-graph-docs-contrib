---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.invite_post_request_body import InvitePostRequestBody
from msgraph.generated.models.invitation_participant_info import InvitationParticipantInfo
from msgraph.generated.models.identity_set import IdentitySet
from msgraph.generated.models.identity import Identity

graph_client = GraphServiceClient(credentials, scopes)

request_body = InvitePostRequestBody(
	participants = [
		InvitationParticipantInfo(
			odata_type = "#microsoft.graph.invitationParticipantInfo",
			identity = IdentitySet(
				odata_type = "#microsoft.graph.identitySet",
				user = Identity(
					odata_type = "#microsoft.graph.identity",
					id = "278405a3-f568-4b3e-b684-009193463064",
					additional_data = {
							"identity_provider" : "AAD",
					}
				),
			),
			participant_id = "a7ebfb2d-871e-419c-87af-27290b22e8db",
		),
	],
	client_context = "f2fa86af-3c51-4bc2-8fc0-475452d9764f",
)

result = await graph_client.communications.calls.by_call_id('call-id').participants.invite.post(request_body)


```
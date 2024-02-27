---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.transfer_post_request_body import TransferPostRequestBody
from msgraph.generated.models.invitation_participant_info import InvitationParticipantInfo
from msgraph.generated.models.identity_set import IdentitySet
from msgraph.generated.models.identity import Identity

graph_client = GraphServiceClient(credentials, scopes)

request_body = TransferPostRequestBody(
	transfer_target = InvitationParticipantInfo(
		identity = IdentitySet(
			additional_data = {
					"phone" : {
							"@odata_type" : "#microsoft.graph.identity",
							"id" : "+12345678901",
					},
			}
		),
		additional_data = {
				"endpoint_type" : "default",
				"language_id" : "languageId-value",
				"region" : "region-value",
		}
	),
	additional_data = {
			"client_context" : "9e90d1c1-f61e-43e7-9f75-d420159aae08",
	}
)

await graph_client.communications.calls.by_call_id('call-id').transfer.post(request_body)


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.communications.calls.item.transfer.transfer_post_request_body import TransferPostRequestBody
from msgraph.generated.models.invitation_participant_info import InvitationParticipantInfo
from msgraph.generated.models.identity_set import IdentitySet
from msgraph.generated.models.identity import Identity
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = TransferPostRequestBody(
	transfer_target = InvitationParticipantInfo(
		identity = IdentitySet(
			user = Identity(
				id = "550fae72-d251-43ec-868c-373732c2704f",
				display_name = "Heidi Steen",
			),
		),
		additional_data = {
				"endpoint_type" : "default",
		}
	),
)

await graph_client.communications.calls.by_call_id('call-id').transfer.post(request_body)


```
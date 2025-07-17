---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.communications.calls.item.transfer.transfer_post_request_body import TransferPostRequestBody
from msgraph_beta.generated.models.invitation_participant_info import InvitationParticipantInfo
from msgraph_beta.generated.models.endpoint_type import EndpointType
from msgraph_beta.generated.models.identity_set import IdentitySet
from msgraph_beta.generated.models.identity import Identity
from msgraph_beta.generated.models.participant_info import ParticipantInfo
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = TransferPostRequestBody(
	transfer_target = InvitationParticipantInfo(
		endpoint_type = EndpointType.Default,
		identity = IdentitySet(
			user = Identity(
				id = "550fae72-d251-43ec-868c-373732c2704f",
				display_name = "Heidi Steen",
				additional_data = {
						"tenant_id" : "72f988bf-86f1-41af-91ab-2d7cd011db47",
				}
			),
		),
	),
	transferee = ParticipantInfo(
		identity = IdentitySet(
			user = Identity(
				id = "751f6800-3180-414d-bd94-333364659951",
				additional_data = {
						"tenant_id" : "72f988bf-86f1-41af-91ab-2d7cd011db47",
				}
			),
		),
		participant_id = "909c6581-5130-43e9-88f3-fcb3582cde37",
	),
	additional_data = {
			"language_id" : "languageId-value",
			"region" : "region-value",
	}
)

await graph_client.communications.calls.by_call_id('call-id').transfer.post(request_body)


```
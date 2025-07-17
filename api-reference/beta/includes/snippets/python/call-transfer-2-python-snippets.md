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
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = TransferPostRequestBody(
	transfer_target = InvitationParticipantInfo(
		odata_type = "#microsoft.graph.invitationParticipantInfo",
		endpoint_type = EndpointType.Default,
		identity = IdentitySet(
			odata_type = "#microsoft.graph.identitySet",
			user = Identity(
				odata_type = "#microsoft.graph.identity",
				id = "550fae72-d251-43ec-868c-373732c2704f",
				display_name = "Heidi Steen",
				additional_data = {
						"tenant_id" : "72f988bf-86f1-41af-91ab-2d7cd011db47",
				}
			),
		),
		replaces_call_id = "e5d39592-99bd-4db8-bca8-30fb894ec51d",
		additional_data = {
				"language_id" : "en-us",
				"region" : "amer",
		}
	),
)

await graph_client.communications.calls.by_call_id('call-id').transfer.post(request_body)


```
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
		endpoint_type = EndpointType.Default,
		identity = IdentitySet(
			additional_data = {
					"phone" : {
							"@odata_type" : "#microsoft.graph.identity",
							"id" : "+12345678901",
					},
			}
		),
		additional_data = {
				"language_id" : "languageId-value",
				"region" : "region-value",
		}
	),
)

await graph_client.communications.calls.by_call_id('call-id').transfer.post(request_body)


```
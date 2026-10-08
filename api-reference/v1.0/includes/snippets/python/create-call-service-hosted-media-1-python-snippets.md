---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.call import Call
from msgraph.generated.models.invitation_participant_info import InvitationParticipantInfo
from msgraph.generated.models.identity_set import IdentitySet
from msgraph.generated.models.identity import Identity
from msgraph.generated.models.modality import Modality
from msgraph.generated.models.outgoing_call_options import OutgoingCallOptions
from msgraph.generated.models.service_hosted_media_config import ServiceHostedMediaConfig
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Call(
	odata_type = "#microsoft.graph.call",
	callback_uri = "https://bot.contoso.com/callback",
	targets = [
		InvitationParticipantInfo(
			odata_type = "#microsoft.graph.invitationParticipantInfo",
			identity = IdentitySet(
				odata_type = "#microsoft.graph.identitySet",
				user = Identity(
					odata_type = "#microsoft.graph.identity",
					display_name = "John",
					id = "112f7296-5fa4-42ca-bae8-6a692b15d4b8",
				),
			),
		),
	],
	requested_modalities = [
		Modality.Audio,
	],
	call_options = OutgoingCallOptions(
		odata_type = "#microsoft.graph.outgoingCallOptions",
		is_content_sharing_notification_enabled = True,
		is_delta_roster_enabled = True,
		is_interactive_roster_enabled = True,
	),
	media_config = ServiceHostedMediaConfig(
		odata_type = "#microsoft.graph.serviceHostedMediaConfig",
	),
)

result = await graph_client.communications.calls.post(request_body)


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.call import Call
from msgraph.generated.models.participant_info import ParticipantInfo
from msgraph.generated.models.identity_set import IdentitySet
from msgraph.generated.models.identity import Identity
from msgraph.generated.models.invitation_participant_info import InvitationParticipantInfo
from msgraph.generated.models.modality import Modality
from msgraph.generated.models.app_hosted_media_config import AppHostedMediaConfig

graph_client = GraphServiceClient(credentials, scopes)

request_body = Call(
	odata_type = "#microsoft.graph.call",
	direction = CallDirection.Outgoing,
	subject = "Create a group call with application hosted media",
	callback_uri = "https://bot.contoso.com/callback",
	source = ParticipantInfo(
		odata_type = "#microsoft.graph.participantInfo",
		identity = IdentitySet(
			odata_type = "#microsoft.graph.identitySet",
			application = Identity(
				odata_type = "#microsoft.graph.identity",
				display_name = "TestBot",
				id = "dd3885da-f9ab-486b-bfae-85de3d445555",
			),
		),
	),
	targets = [
		InvitationParticipantInfo(
			odata_type = "#microsoft.graph.invitationParticipantInfo",
			identity = IdentitySet(
				odata_type = "#microsoft.graph.identitySet",
				user = Identity(
					odata_type = "#microsoft.graph.identity",
					display_name = "user1",
					id = "98da8a1a-1b87-452c-a713-65d3f10b5555",
				),
			),
		),
		InvitationParticipantInfo(
			odata_type = "#microsoft.graph.invitationParticipantInfo",
			identity = IdentitySet(
				odata_type = "#microsoft.graph.identitySet",
				user = Identity(
					odata_type = "#microsoft.graph.identity",
					display_name = "user2",
					id = "bf5aae9a-d11d-47a8-93b1-782504c95555",
				),
			),
		),
	],
	requested_modalities = [
		Modality.Audio,
	],
	media_config = AppHostedMediaConfig(
		odata_type = "#microsoft.graph.appHostedMediaConfig",
		additional_data = {
				"remove_from_default_audio_group" : False,
		}
	),
)

result = await graph_client.communications.calls.post(request_body)


```
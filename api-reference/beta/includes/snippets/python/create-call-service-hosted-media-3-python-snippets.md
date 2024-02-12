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
	callback_uri = "https://bot.contoso.com/callback",
	source = ParticipantInfo(
		odata_type = "#microsoft.graph.participantInfo",
		identity = IdentitySet(
			odata_type = "#microsoft.graph.identitySet",
			additional_data = {
					"application_instance" : {
							"@odata_type" : "#microsoft.graph.identity",
							"display_name" : "Calling Bot",
							"id" : "3d913abb-aec0-4964-8fa6-3c6850c4f278",
					},
			}
		),
		country_code = None,
		endpoint_type = None,
		region = None,
		language_id = None,
	),
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
	requested_modalities = [
		Modality.Audio,
	],
	media_config = AppHostedMediaConfig(
		odata_type = "#microsoft.graph.appHostedMediaConfig",
		blob = "<Media Session Configuration>",
	),
	tenant_id = "aa67bd4c-8475-432d-bd41-39f255720e0a",
)

result = await graph_client.communications.calls.post(request_body)


```
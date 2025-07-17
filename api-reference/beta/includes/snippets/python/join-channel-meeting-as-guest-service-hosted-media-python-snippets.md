---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.call import Call
from msgraph_beta.generated.models.participant_info import ParticipantInfo
from msgraph_beta.generated.models.identity_set import IdentitySet
from msgraph_beta.generated.models.identity import Identity
from msgraph_beta.generated.models.modality import Modality
from msgraph_beta.generated.models.service_hosted_media_config import ServiceHostedMediaConfig
from msgraph_beta.generated.models.media_info import MediaInfo
from msgraph_beta.generated.models.chat_info import ChatInfo
from msgraph_beta.generated.models.organizer_meeting_info import OrganizerMeetingInfo
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Call(
	odata_type = "#microsoft.graph.call",
	callback_uri = "https://bot.contoso.com/callback",
	source = ParticipantInfo(
		odata_type = "#microsoft.graph.participantInfo",
		identity = IdentitySet(
			odata_type = "#microsoft.graph.identitySet",
			additional_data = {
					"guest" : {
							"@odata_type" : "#microsoft.graph.identity",
							"display_name" : "Guest User",
							"id" : "d7a3b999-17ac-4bca-9e77-e6a730d2ec2e",
					},
			}
		),
	),
	requested_modalities = [
		Modality.Audio,
	],
	media_config = ServiceHostedMediaConfig(
		odata_type = "#microsoft.graph.serviceHostedMediaConfig",
		pre_fetch_media = [
			MediaInfo(
				uri = "https://cdn.contoso.com/beep.wav",
				resource_id = "f8971b04-b53e-418c-9222-c82ce681a582",
			),
			MediaInfo(
				uri = "https://cdn.contoso.com/cool.wav",
				resource_id = "86dc814b-c172-4428-9112-60f8ecae1edb",
			),
		],
	),
	chat_info = ChatInfo(
		odata_type = "#microsoft.graph.chatInfo",
		thread_id = "19:cbee7c1c860e465f8258e3cebf7bee0d@thread.skype",
		message_id = "1533758867081",
	),
	meeting_info = OrganizerMeetingInfo(
		odata_type = "#microsoft.graph.organizerMeetingInfo",
		organizer = IdentitySet(
			odata_type = "#microsoft.graph.identitySet",
			user = Identity(
				odata_type = "#microsoft.graph.identity",
				id = "5810cede-f3cc-42eb-b2c1-e9bd5d53ec96",
				display_name = "Bob",
				additional_data = {
						"tenant_id" : "aa67bd4c-8475-432d-bd41-39f255720e0a",
				}
			),
		),
		allow_conversation_without_host = True,
	),
)

result = await graph_client.communications.calls.post(request_body)


```
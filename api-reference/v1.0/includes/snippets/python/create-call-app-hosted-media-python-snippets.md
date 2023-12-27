---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = Call(
	odata_type = "#microsoft.graph.call",
	callback_uri = "https://bot.contoso.com/callback",
	source = ParticipantInfo(
		odata_type = "#microsoft.graph.participantInfo",
		identity = IdentitySet(
			odata_type = "#microsoft.graph.identitySet",
			application = Identity(
				odata_type = "#microsoft.graph.identity",
				display_name = "Calling Bot",
				id = "2891555a-92ff-42e6-80fa-6e1300c6b5c6",
			),
		),
		region = None,
		language_id = None,
	),
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
	media_config = AppHostedMediaConfig(
		odata_type = "#microsoft.graph.appHostedMediaConfig",
		blob = "<Media Session Configuration>",
	),
)

result = await graph_client.communications.calls.post(request_body)


```
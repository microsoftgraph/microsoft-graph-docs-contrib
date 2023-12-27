---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = Call(
	odata_type = "#microsoft.graph.call",
	callback_uri = "https://bot.contoso.com/callback",
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
	meeting_info = JoinMeetingIdMeetingInfo(
		odata_type = "#microsoft.graph.joinMeetingIdMeetingInfo",
		join_meeting_id = "1234567",
		passcode = "psw123",
	),
	tenant_id = "86dc81db-c112-4228-9222-63f3esaa1edb",
)

result = await graph_client.communications.calls.post(request_body)


```
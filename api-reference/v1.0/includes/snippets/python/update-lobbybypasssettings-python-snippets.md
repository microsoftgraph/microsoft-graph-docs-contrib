---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = OnlineMeeting(
	lobby_bypass_settings = LobbyBypassSettings(
		is_dial_in_bypass_enabled = True,
	),
)

result = await graph_client.me.online_meetings.by_online_meeting_id('onlineMeeting-id').patch(request_body)


```
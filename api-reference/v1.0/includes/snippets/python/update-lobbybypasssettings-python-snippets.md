---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = OnlineMeeting()
lobby_bypass_settings = LobbyBypassSettings()
lobby_bypass_settings.is_dial_in_bypass_enabled = True


request_body.lobby_bypass_settings = lobby_bypass_settings



result = await client.me.online_meetings.by_online_meeting_id('onlineMeeting-id').patch(request_body = request_body)


```
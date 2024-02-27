---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.online_meeting import OnlineMeeting
from msgraph.generated.models.lobby_bypass_settings import LobbyBypassSettings

graph_client = GraphServiceClient(credentials, scopes)

request_body = OnlineMeeting(
	lobby_bypass_settings = LobbyBypassSettings(
		is_dial_in_bypass_enabled = True,
	),
)

result = await graph_client.me.online_meetings.by_online_meeting_id('onlineMeeting-id').patch(request_body)


```
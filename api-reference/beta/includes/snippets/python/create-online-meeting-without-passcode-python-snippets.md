---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.online_meeting import OnlineMeeting
from msgraph.generated.models.join_meeting_id_settings import JoinMeetingIdSettings

graph_client = GraphServiceClient(credentials, scopes)

request_body = OnlineMeeting(
	start_date_time = "2019-07-12T14:30:34.2444915-07:00",
	end_date_time = "2019-07-12T15:00:34.2464912-07:00",
	subject = "User meeting in Microsoft Teams channel.",
	join_meeting_id_settings = JoinMeetingIdSettings(
		is_passcode_required = False,
	),
)

result = await graph_client.me.online_meetings.post(request_body)


```
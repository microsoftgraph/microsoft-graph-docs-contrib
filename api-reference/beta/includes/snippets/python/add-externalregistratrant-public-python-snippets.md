---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.external_meeting_registrant import ExternalMeetingRegistrant

graph_client = GraphServiceClient(credentials, scopes)

request_body = ExternalMeetingRegistrant(
	odata_type = "#microsoft.graph.externalMeetingRegistrant",
	id = "9d96988d-a66a-46ce-aad7-0b245615b297",
)

result = await graph_client.me.online_meetings.by_online_meeting_id('onlineMeeting-id').registration.registrants.post(request_body)


```
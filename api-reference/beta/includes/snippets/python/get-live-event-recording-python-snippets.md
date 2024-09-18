---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.me.online_meetings.by_online_meeting_id('onlineMeeting-id').recording.get()


```
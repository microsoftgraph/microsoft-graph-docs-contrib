---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.me.online_meetings.by_online_meeting_id('onlineMeeting-id').meeting_attendance_report.get()


```
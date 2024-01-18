---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.me.online_meetings.by_online_meeting_id('onlineMeeting-id').attendance_reports.get()


```
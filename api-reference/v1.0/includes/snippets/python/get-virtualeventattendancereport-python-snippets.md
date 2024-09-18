---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.solutions.virtual_events.webinars.by_virtual_event_webinar_id('virtualEventWebinar-id').sessions.by_virtual_event_session_id('virtualEventSession-id').attendance_reports.by_meeting_attendance_report_id('meetingAttendanceReport-id').get()


```
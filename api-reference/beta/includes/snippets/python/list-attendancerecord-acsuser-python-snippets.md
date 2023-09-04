---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)


result = await graph_client.me.online_meetings.by_online_meeting_id('onlineMeeting-id').attendance_reports.by_attendance_report_id('meetingAttendanceReport-id').attendance_records.get()


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = MeetingAttendanceReportRequestBuilder.MeetingAttendanceReportRequestBuilderGetQueryParameters(
		expand = ["attendanceRecords"],
)

request_configuration = MeetingAttendanceReportRequestBuilder.MeetingAttendanceReportRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.me.online_meetings.by_online_meeting_id('onlineMeeting-id').attendance_reports.by_attendance_report_id('meetingAttendanceReport-id').get(request_configuration = request_configuration)


```
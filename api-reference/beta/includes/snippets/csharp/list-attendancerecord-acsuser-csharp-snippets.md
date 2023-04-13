---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var attendanceRecords = await graphClient.Me.OnlineMeetings["{onlineMeeting-id}"].AttendanceReports["{meetingAttendanceReport-id}"].AttendanceRecords
	.Request()
	.GetAsync();

```
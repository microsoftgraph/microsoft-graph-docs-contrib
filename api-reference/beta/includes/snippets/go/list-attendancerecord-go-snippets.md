---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

onlineMeetingId := "onlineMeeting-id"
meetingAttendanceReportId := "meetingAttendanceReport-id"
result, err := graphClient.Me().OnlineMeetingsById(&onlineMeetingId).AttendanceReportsById(&meetingAttendanceReportId).AttendanceRecords().Get(nil)


```
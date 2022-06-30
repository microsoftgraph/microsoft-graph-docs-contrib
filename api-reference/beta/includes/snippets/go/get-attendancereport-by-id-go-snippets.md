---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.MeetingAttendanceReportRequestBuilderGetQueryParameters{
	Expand: "attendanceRecords",
}
options := &msgraphsdk.MeetingAttendanceReportRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}
onlineMeetingId := "onlineMeeting-id"
meetingAttendanceReportId := "meetingAttendanceReport-id"
result, err := graphClient.Me().OnlineMeetingsById(&onlineMeetingId).AttendanceReportsById(&meetingAttendanceReportId).GetWithRequestConfigurationAndResponseHandler(options, nil)


```
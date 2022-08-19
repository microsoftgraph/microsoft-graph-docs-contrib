---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.MeetingAttendanceReportRequestBuilderGetQueryParameters{
	Expand: [] string {"attendanceRecords"},
}
configuration := &graphconfig.MeetingAttendanceReportRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().OnlineMeetingsById("onlineMeeting-id").AttendanceReportsById("meetingAttendanceReport-id").GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```
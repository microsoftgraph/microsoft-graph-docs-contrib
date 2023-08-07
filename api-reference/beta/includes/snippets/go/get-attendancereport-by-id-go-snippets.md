---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphusers.ItemOnlineMeetingItemAttendanceReportItemRequestBuilderGetQueryParameters{
	Expand: [] string {"attendanceRecords"},
}
configuration := &graphusers.ItemOnlineMeetingItemAttendanceReportItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

attendanceReports, err := graphClient.Me().OnlineMeetings().ByOnlineMeetingId("onlineMeeting-id").AttendanceReports().ByMeetingAttendanceReportId("meetingAttendanceReport-id").Get(context.Background(), configuration)


```
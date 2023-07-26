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

result, err := graphClient.Me().OnlineMeetings().ByOnlineMeetingId("onlineMeeting-id").AttendanceReports().ByAttendanceReportId("meetingAttendanceReport-id").Get(context.Background(), configuration)


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphconfig.ItemOnlineMeetingItemAttendanceReportItemRequestBuilderGetQueryParameters{
	Expand: [] string {"attendanceRecords"},
}
configuration := &graphconfig.ItemOnlineMeetingItemAttendanceReportItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().OnlineMeetingsById("onlineMeeting-id").AttendanceReportsById("meetingAttendanceReport-id").Get(context.Background(), configuration)


```
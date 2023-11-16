---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



attendanceRecords, err := graphClient.Solutions().VirtualEvents().Webinars().ByVirtualEventWebinarId("virtualEventWebinar-id").Sessions().ByVirtualEventSessionId("virtualEventSession-id").AttendanceReports().ByMeetingAttendanceReportId("meetingAttendanceReport-id").AttendanceRecords().Get(context.Background(), nil)


```
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



result, err := graphClient.Solutions().VirtualEvents().Webinars().ByWebinarId("virtualEventWebinar-id").Sessions().BySessionId("virtualEventSession-id").AttendanceReports().Get(context.Background(), nil)


```
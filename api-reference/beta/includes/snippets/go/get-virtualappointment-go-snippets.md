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



virtualAppointment, err := graphClient.Me().OnlineMeetings().ByOnlineMeetingId("onlineMeeting-id").VirtualAppointment().Get(context.Background(), nil)


```
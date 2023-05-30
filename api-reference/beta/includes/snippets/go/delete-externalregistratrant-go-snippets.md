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



graphClient.Me().OnlineMeetings().ByOnlineMeetingId("onlineMeeting-id").Registration().Registrants().ByRegistrantId("meetingRegistrantBase-id").Delete(context.Background(), nil)


```
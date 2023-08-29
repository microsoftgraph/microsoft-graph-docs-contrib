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



registration, err := graphClient.Me().OnlineMeetings().ByOnlineMeetingId("onlineMeeting-id").Registration().Get(context.Background(), nil)


```
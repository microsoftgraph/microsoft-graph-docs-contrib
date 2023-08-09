---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



timeOffReasons, err := graphClient.Teams().ByTeamId("team-id").Schedule().TimeOffReasons().ByTimeOffReasonId("timeOffReason-id").Get(context.Background(), nil)


```
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



timesOff, err := graphClient.Teams().ByTeamId("team-id").Schedule().TimesOff().ByTimeOffId("timeOff-id").Get(context.Background(), nil)


```
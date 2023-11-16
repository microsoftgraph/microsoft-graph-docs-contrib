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



tags, err := graphClient.Teams().ByTeamId("team-id").Tags().ByTeamworkTagId("teamworkTag-id").Get(context.Background(), nil)


```
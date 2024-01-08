---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewTeamworkTag()
displayName := "Finance"
requestBody.SetDisplayName(&displayName) 

tags, err := graphClient.Teams().ByTeamId("team-id").Tags().ByTeamworkTagId("teamworkTag-id").Patch(context.Background(), requestBody, nil)


```
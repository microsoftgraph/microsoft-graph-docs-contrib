---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewTeamworkTagMember()
userId := "97f62344-57dc-409c-88ad-c4af14158ff5"
requestBody.SetUserId(&userId) 

result, err := graphClient.Teams().ByTeamId("team-id").Tags().ByTagId("teamworkTag-id").Members().Post(context.Background(), requestBody, nil)


```
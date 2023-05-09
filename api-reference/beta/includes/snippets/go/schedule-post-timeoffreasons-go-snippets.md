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


requestBody := graphmodels.NewTimeOffReason()
displayName := "Vacation"
requestBody.SetDisplayName(&displayName) 
iconType := graphmodels.PLANE_TIMEOFFREASONICONTYPE 
requestBody.SetIconType(&iconType) 
isActive := true
requestBody.SetIsActive(&isActive) 

result, err := graphClient.Teams().ByTeamId("team-id").Schedule().TimeOffReasons().Post(context.Background(), requestBody, nil)


```
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


requestBody := graphmodels.NewSchedulingGroup()
displayName := "Cashiers"
requestBody.SetDisplayName(&displayName) 
isActive := true
requestBody.SetIsActive(&isActive) 
userIds := []string {
	"c5d0c76b-80c4-481c-be50-923cd8d680a1",
	"2a4296b3-a28a-44ba-bc66-0274b9b95851",

}
requestBody.SetUserIds(userIds)

result, err := graphClient.Teams().ByTeamId("team-id").Schedule().SchedulingGroups().Post(context.Background(), requestBody, nil)


```
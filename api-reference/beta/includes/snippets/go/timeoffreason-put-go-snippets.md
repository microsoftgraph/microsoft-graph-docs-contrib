---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Teams/Item/Schedule/TimeOffReasons/Item"
	  graphconfig "github.com/microsoftgraph/msgraph-beta-sdk-go/teams"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


headers := abstractions.NewRequestHeaders()
headers.Add("Prefer", "return=representation")

configuration := &graphconfig.TeamItemScheduleTimeOffReasonItemRequestBuilderPutRequestConfiguration{
	Headers: headers,
}
requestBody := graphmodels.NewTimeOffReason()
additionalData := map[string]interface{}{
	"displayName" : "Vacation", 
	"iconType" : "plane", 
	isActive := true
requestBody.SetIsActive(&isActive) 
}
requestBody.SetAdditionalData(additionalData)

graphClient.Teams().ByTeamId("team-id").Schedule().TimeOffReasons().ByTimeOffReasonId("timeOffReason-id").Put(context.Background(), requestBody, configuration)


```
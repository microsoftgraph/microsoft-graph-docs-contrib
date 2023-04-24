---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Teams/Item/Schedule/TimesOff/Item"
	  graphconfig "github.com/microsoftgraph/msgraph-beta-sdk-go/teams"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


headers := abstractions.NewRequestHeaders()
headers.Add("Prefer", "return=representation")

configuration := &graphconfig.TeamItemScheduleTimesOffItemRequestBuilderPutRequestConfiguration{
	Headers: headers,
}
requestBody := graphmodels.NewTimesOff()
additionalData := map[string]interface{}{
	"userId" : "c5d0c76b-80c4-481c-be50-923cd8d680a1", 
sharedTimeOff := graphmodels.New()
timeOffReasonId := "TOR_891045ca-b5d2-406b-aa06-a3c8921245d7"
sharedTimeOff.SetTimeOffReasonId(&timeOffReasonId) 
startDateTime := "2019-03-11T07:00:00Z"
sharedTimeOff.SetStartDateTime(&startDateTime) 
endDateTime := "2019-03-12T07:00:00Z"
sharedTimeOff.SetEndDateTime(&endDateTime) 
theme := "white"
sharedTimeOff.SetTheme(&theme) 
	requestBody.SetSharedTimeOff(sharedTimeOff)
draftTimeOff := graphmodels.New()
timeOffReasonId := "TOR_891045ca-b5d2-406b-aa06-a3c8921245d7"
draftTimeOff.SetTimeOffReasonId(&timeOffReasonId) 
startDateTime := "2019-03-11T07:00:00Z"
draftTimeOff.SetStartDateTime(&startDateTime) 
endDateTime := "2019-03-12T07:00:00Z"
draftTimeOff.SetEndDateTime(&endDateTime) 
theme := "pink"
draftTimeOff.SetTheme(&theme) 
	requestBody.SetDraftTimeOff(draftTimeOff)
}
requestBody.SetAdditionalData(additionalData)

graphClient.Teams().ByTeamId("team-id").Schedule().TimesOff().ByTimesOff().Id("timeOff-id").Put(context.Background(), requestBody, configuration)


```
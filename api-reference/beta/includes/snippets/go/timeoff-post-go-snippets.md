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


requestBody := graphmodels.NewTimeOff()
userId := "c5d0c76b-80c4-481c-be50-923cd8d680a1"
requestBody.SetUserId(&userId) 
sharedTimeOff := graphmodels.NewTimeOffItem()
timeOffReasonId := "TOR_891045ca-b5d2-406b-aa06-a3c8921245d7"
sharedTimeOff.SetTimeOffReasonId(&timeOffReasonId) 
startDateTime , err := time.Parse(time.RFC3339, "2019-03-11T07:00:00Z")
sharedTimeOff.SetStartDateTime(&startDateTime) 
endDateTime , err := time.Parse(time.RFC3339, "2019-03-12T07:00:00Z")
sharedTimeOff.SetEndDateTime(&endDateTime) 
theme := graphmodels.WHITE_SCHEDULEENTITYTHEME 
sharedTimeOff.SetTheme(&theme) 
requestBody.SetSharedTimeOff(sharedTimeOff)
draftTimeOff := graphmodels.NewTimeOffItem()
timeOffReasonId := "TOR_891045ca-b5d2-406b-aa06-a3c8921245d7"
draftTimeOff.SetTimeOffReasonId(&timeOffReasonId) 
startDateTime , err := time.Parse(time.RFC3339, "2019-03-11T07:00:00Z")
draftTimeOff.SetStartDateTime(&startDateTime) 
endDateTime , err := time.Parse(time.RFC3339, "2019-03-12T07:00:00Z")
draftTimeOff.SetEndDateTime(&endDateTime) 
theme := graphmodels.PINK_SCHEDULEENTITYTHEME 
draftTimeOff.SetTheme(&theme) 
requestBody.SetDraftTimeOff(draftTimeOff)

result, err := graphClient.Teams().ByTeamId("team-id").Schedule().TimesOff().Post(context.Background(), requestBody, nil)


```
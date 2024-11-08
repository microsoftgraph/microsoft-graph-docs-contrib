---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewTimeOff()
userId := "c5d0c76b-80c4-481c-be50-923cd8d680a1"
requestBody.SetUserId(&userId) 
isStagedForDeletion := false
requestBody.SetIsStagedForDeletion(&isStagedForDeletion) 
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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
timesOff, err := graphClient.Teams().ByTeamId("team-id").Schedule().TimesOff().Post(context.Background(), requestBody, nil)


```
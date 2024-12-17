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

requestBody := graphmodels.NewShift()
userId := "5ca83ce7-291d-43b7-bf53-af79eef4bc1d"
requestBody.SetUserId(&userId) 
draftShift := graphmodels.NewShiftItem()
displayName := null
draftShift.SetDisplayName(&displayName) 
startDateTime , err := time.Parse(time.RFC3339, "2024-10-08T15:00:00Z")
draftShift.SetStartDateTime(&startDateTime) 
endDateTime , err := time.Parse(time.RFC3339, "2024-10-09T00:00:00Z")
draftShift.SetEndDateTime(&endDateTime) 
theme := graphmodels.BLUE_SCHEDULEENTITYTHEME 
draftShift.SetTheme(&theme) 
notes := null
draftShift.SetNotes(&notes) 
activities := []graphmodels.ShiftActivityable {

}
draftShift.SetActivities(activities)
requestBody.SetDraftShift(draftShift)
sharedShift := null
requestBody.SetSharedShift(&sharedShift) 
isStagedForDeletion := false
requestBody.SetIsStagedForDeletion(&isStagedForDeletion) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
shifts, err := graphClient.Teams().ByTeamId("team-id").Schedule().Shifts().Post(context.Background(), requestBody, nil)


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewShift()
id := "SHFT_577b75d2-a927-48c0-a5d1-dc984894e7b8"
requestBody.SetId(&id) 
userId := "c5d0c76b-80c4-481c-be50-923cd8d680a1"
requestBody.SetUserId(&userId) 
schedulingGroupId := "TAG_228940ed-ff84-4e25-b129-1b395cf78be0"
requestBody.SetSchedulingGroupId(&schedulingGroupId) 
sharedShift := graphmodels.NewShiftItem()
displayName := "Day shift"
sharedShift.SetDisplayName(&displayName) 
notes := "Please do inventory as part of your shift."
sharedShift.SetNotes(&notes) 
startDateTime , err := time.Parse(time.RFC3339, "2019-03-11T15:00:00Z")
sharedShift.SetStartDateTime(&startDateTime) 
endDateTime , err := time.Parse(time.RFC3339, "2019-03-12T00:00:00Z")
sharedShift.SetEndDateTime(&endDateTime) 
theme := graphmodels.BLUE_SCHEDULEENTITYTHEME 
sharedShift.SetTheme(&theme) 


shiftActivity := graphmodels.NewShiftActivity()
isPaid := true
shiftActivity.SetIsPaid(&isPaid) 
startDateTime , err := time.Parse(time.RFC3339, "2019-03-11T15:00:00Z")
shiftActivity.SetStartDateTime(&startDateTime) 
endDateTime , err := time.Parse(time.RFC3339, "2019-03-11T15:15:00Z")
shiftActivity.SetEndDateTime(&endDateTime) 
code := ""
shiftActivity.SetCode(&code) 
displayName := "Lunch"
shiftActivity.SetDisplayName(&displayName) 

activities := []graphmodels.ShiftActivityable {
	shiftActivity,

}
sharedShift.SetActivities(activities)
requestBody.SetSharedShift(sharedShift)
draftShift := graphmodels.NewShiftItem()
displayName := "Day shift"
draftShift.SetDisplayName(&displayName) 
notes := "Please do inventory as part of your shift."
draftShift.SetNotes(&notes) 
startDateTime , err := time.Parse(time.RFC3339, "2019-03-11T15:00:00Z")
draftShift.SetStartDateTime(&startDateTime) 
endDateTime , err := time.Parse(time.RFC3339, "2019-03-12T00:00:00Z")
draftShift.SetEndDateTime(&endDateTime) 
theme := graphmodels.BLUE_SCHEDULEENTITYTHEME 
draftShift.SetTheme(&theme) 


shiftActivity := graphmodels.NewShiftActivity()
isPaid := true
shiftActivity.SetIsPaid(&isPaid) 
startDateTime , err := time.Parse(time.RFC3339, "2019-03-11T15:00:00Z")
shiftActivity.SetStartDateTime(&startDateTime) 
endDateTime , err := time.Parse(time.RFC3339, "2019-03-11T15:30:00Z")
shiftActivity.SetEndDateTime(&endDateTime) 
code := ""
shiftActivity.SetCode(&code) 
displayName := "Lunch"
shiftActivity.SetDisplayName(&displayName) 

activities := []graphmodels.ShiftActivityable {
	shiftActivity,

}
draftShift.SetActivities(activities)
requestBody.SetDraftShift(draftShift)

result, err := graphClient.Teams().ByTeamId("team-id").Schedule().Shifts().Post(context.Background(), requestBody, nil)


```
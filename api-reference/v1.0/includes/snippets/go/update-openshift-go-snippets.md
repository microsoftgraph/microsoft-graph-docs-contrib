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


requestBody := graphmodels.NewOpenShift()
schedulingGroupId := "TAG_228940ed-ff84-4e25-b129-1b395cf78be0"
requestBody.SetSchedulingGroupId(&schedulingGroupId) 
sharedOpenShift := graphmodels.NewOpenShiftItem()
notes := "Inventory Management"
sharedOpenShift.SetNotes(&notes) 
openSlotCount := int32(5)
sharedOpenShift.SetOpenSlotCount(&openSlotCount) 
displayName := "Field shift"
sharedOpenShift.SetDisplayName(&displayName) 
startDateTime , err := time.Parse(time.RFC3339, "2018-10-04T00:58:45.340Z")
sharedOpenShift.SetStartDateTime(&startDateTime) 
endDateTime , err := time.Parse(time.RFC3339, "2018-10-04T09:50:45.332Z")
sharedOpenShift.SetEndDateTime(&endDateTime) 
theme := graphmodels.WHITE_SCHEDULEENTITYTHEME 
sharedOpenShift.SetTheme(&theme) 


shiftActivity := graphmodels.NewShiftActivity()
isPaid := true
shiftActivity.SetIsPaid(&isPaid) 
startDateTime , err := time.Parse(time.RFC3339, "2018-10-04T00:58:45.340Z")
shiftActivity.SetStartDateTime(&startDateTime) 
endDateTime , err := time.Parse(time.RFC3339, "2018-10-04T01:58:45.340Z")
shiftActivity.SetEndDateTime(&endDateTime) 
code := ""
shiftActivity.SetCode(&code) 
displayName := "Lunch"
shiftActivity.SetDisplayName(&displayName) 

activities := []graphmodels.ShiftActivityable {
	shiftActivity,

}
sharedOpenShift.SetActivities(activities)
requestBody.SetSharedOpenShift(sharedOpenShift)
draftOpenShift := null
requestBody.SetDraftOpenShift(&draftOpenShift) 

result, err := graphClient.Teams().ByTeamId("team-id").Schedule().OpenShifts().ByOpenShiftId("openShift-id").Patch(context.Background(), requestBody, nil)


```
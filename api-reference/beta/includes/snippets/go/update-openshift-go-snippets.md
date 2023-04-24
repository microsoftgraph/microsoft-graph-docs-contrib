---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Teams/Item/Schedule/OpenShifts/Item"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewOpenShift()
additionalData := map[string]interface{}{
	"schedulingGroupId" : "TAG_228940ed-ff84-4e25-b129-1b395cf78be0", 
sharedOpenShift := graphmodels.New()
notes := "Inventory Management"
sharedOpenShift.SetNotes(&notes) 
openSlotCount := int32(5)
sharedOpenShift.SetOpenSlotCount(&openSlotCount) 
displayName := "Field shift"
sharedOpenShift.SetDisplayName(&displayName) 
startDateTime := "2018-10-04T00:58:45.340Z"
sharedOpenShift.SetStartDateTime(&startDateTime) 
endDateTime := "2018-10-04T09:50:45.332Z"
sharedOpenShift.SetEndDateTime(&endDateTime) 
theme := "white"
sharedOpenShift.SetTheme(&theme) 


 := graphmodels.New()
isPaid := true
.SetIsPaid(&isPaid) 
startDateTime := "2018-10-04T00:58:45.340Z"
.SetStartDateTime(&startDateTime) 
endDateTime := "2018-10-04T01:58:45.340Z"
.SetEndDateTime(&endDateTime) 
code := ""
.SetCode(&code) 
displayName := "Lunch"
.SetDisplayName(&displayName) 

	activities := []graphmodels.Objectable {
		,

	}
	sharedOpenShift.SetActivities(activities)
	requestBody.SetSharedOpenShift(sharedOpenShift)
	draftOpenShift := null
requestBody.SetDraftOpenShift(&draftOpenShift) 
}
requestBody.SetAdditionalData(additionalData)

graphClient.Teams().ByTeamId("team-id").Schedule().OpenShifts().ByOpenShiftId("openShift-id").Put(context.Background(), requestBody, nil)


```
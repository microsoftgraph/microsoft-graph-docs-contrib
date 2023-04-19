---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/Teams/Item/Schedule/Shifts/Item"
	  graphconfig "github.com/microsoftgraph/msgraph-sdk-go/teams"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


headers := abstractions.NewRequestHeaders()
headers.Add("Prefer", "return=representation")

configuration := &graphconfig.TeamItemScheduleShiftItemRequestBuilderPutRequestConfiguration{
	Headers: headers,
}
requestBody := graphmodels.NewShift()
additionalData := map[string]interface{}{
	"id" : "SHFT_577b75d2-a927-48c0-a5d1-dc984894e7b8", 
	"createdDateTime" : "2019-03-14T04:32:51.451Z", 
	"lastModifiedDateTime" : "2019-03-14T05:32:51.451Z", 
	"userId" : "c5d0c76b-80c4-481c-be50-923cd8d680a1", 
	"schedulingGroupId" : "TAG_228940ed-ff84-4e25-b129-1b395cf78be0", 
lastModifiedBy := graphmodels.New()
	application := null
lastModifiedBy.SetApplication(&application) 
	device := null
lastModifiedBy.SetDevice(&device) 
	conversation := null
lastModifiedBy.SetConversation(&conversation) 
user := graphmodels.New()
id := "366c0b19-49b1-41b5-a03f-9f3887bd0ed8"
user.SetId(&id) 
displayName := "John Doe"
user.SetDisplayName(&displayName) 
	lastModifiedBy.SetUser(user)
	requestBody.SetLastModifiedBy(lastModifiedBy)
sharedShift := graphmodels.New()
displayName := "Day shift"
sharedShift.SetDisplayName(&displayName) 
notes := "Please do inventory as part of your shift."
sharedShift.SetNotes(&notes) 
startDateTime := "2019-03-11T15:00:00Z"
sharedShift.SetStartDateTime(&startDateTime) 
endDateTime := "2019-03-12T00:00:00Z"
sharedShift.SetEndDateTime(&endDateTime) 
theme := "blue"
sharedShift.SetTheme(&theme) 


 := graphmodels.New()
isPaid := true
.SetIsPaid(&isPaid) 
startDateTime := "2019-03-11T15:00:00Z"
.SetStartDateTime(&startDateTime) 
endDateTime := "2019-03-11T15:15:00Z"
.SetEndDateTime(&endDateTime) 
code := ""
.SetCode(&code) 
displayName := "Lunch"
.SetDisplayName(&displayName) 

	activities := []graphmodels.Objectable {
		,

	}
	sharedShift.SetActivities(activities)
	requestBody.SetSharedShift(sharedShift)
draftShift := graphmodels.New()
displayName := "Day shift"
draftShift.SetDisplayName(&displayName) 
notes := "Please do inventory as part of your shift."
draftShift.SetNotes(&notes) 
startDateTime := "2019-03-11T15:00:00Z"
draftShift.SetStartDateTime(&startDateTime) 
endDateTime := "2019-03-12T00:00:00Z"
draftShift.SetEndDateTime(&endDateTime) 
theme := "blue"
draftShift.SetTheme(&theme) 


 := graphmodels.New()
isPaid := true
.SetIsPaid(&isPaid) 
startDateTime := "2019-03-11T15:00:00Z"
.SetStartDateTime(&startDateTime) 
endDateTime := "2019-03-11T15:30:00Z"
.SetEndDateTime(&endDateTime) 
code := ""
.SetCode(&code) 
displayName := "Lunch"
.SetDisplayName(&displayName) 

	activities := []graphmodels.Objectable {
		,

	}
	draftShift.SetActivities(activities)
	requestBody.SetDraftShift(draftShift)
}
requestBody.SetAdditionalData(additionalData)

graphClient.Teams().ByTeamId("team-id").Schedule().Shifts().ByShiftId("shift-id").Put(context.Background(), requestBody, configuration)


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Teams/Item/Schedule/TimeCards/Item"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewTimeCard()
additionalData := map[string]interface{}{
	"userId" : "70e47528-2fae-42b5-9d8e-ee73ccd90603", 
	"state" : "clockedOut", 
	"confirmedBy" : "None", 
	notes := null
requestBody.SetNotes(&notes) 
clockInEvent := graphmodels.New()
dateTime := "2021-05-21T21:58:41.327Z"
clockInEvent.SetDateTime(&dateTime) 
	atApprovedLocation := null
clockInEvent.SetAtApprovedLocation(&atApprovedLocation) 
notes := graphmodels.New()
contentType := "text"
notes.SetContentType(&contentType) 
content := "update sample notes"
notes.SetContent(&content) 
	clockInEvent.SetNotes(notes)
	requestBody.SetClockInEvent(clockInEvent)
clockOutEvent := graphmodels.New()
dateTime := "2021-05-21T22:01:46.205Z"
clockOutEvent.SetDateTime(&dateTime) 
	atApprovedLocation := null
clockOutEvent.SetAtApprovedLocation(&atApprovedLocation) 
notes := graphmodels.New()
contentType := "text"
notes.SetContentType(&contentType) 
content := "update sample notes"
notes.SetContent(&content) 
	clockOutEvent.SetNotes(notes)
	requestBody.SetClockOutEvent(clockOutEvent)


 := graphmodels.New()
breakId := "BRK_138f4751-68b1-44c1-aca2-2b26cba9e73f"
.SetBreakId(&breakId) 
notes := null
.SetNotes(&notes) 
start := graphmodels.New()
dateTime := "2021-05-21T21:59:59.328Z"
start.SetDateTime(&dateTime) 
atApprovedLocation := null
start.SetAtApprovedLocation(&atApprovedLocation) 
notes := graphmodels.New()
contentType := "text"
notes.SetContentType(&contentType) 
content := "update sample notes"
notes.SetContent(&content) 
start.SetNotes(notes)
.SetStart(start)
end := graphmodels.New()
dateTime := "2021-05-21T22:01:10.205Z"
end.SetDateTime(&dateTime) 
atApprovedLocation := null
end.SetAtApprovedLocation(&atApprovedLocation) 
notes := graphmodels.New()
contentType := "text"
notes.SetContentType(&contentType) 
content := "update sample notes"
notes.SetContent(&content) 
end.SetNotes(notes)
.SetEnd(end)

	breaks := []graphmodels.Objectable {
		,

	}
}
requestBody.SetAdditionalData(additionalData)

graphClient.Teams().ByTeamId("team-id").Schedule().TimeCards().ByTimeCardId("timeCard-id").Put(context.Background(), requestBody, nil)


```
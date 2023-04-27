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


requestBody := graphmodels.NewTimeCard()
clockInEvent := graphmodels.NewTimeCardEvent()
dateTime , err := time.Parse(time.RFC3339, "2019-03-18T00:00:00.000Z")
clockInEvent.SetDateTime(&dateTime) 
atApprovedLocation := true
clockInEvent.SetAtApprovedLocation(&atApprovedLocation) 
notes := graphmodels.NewItemBody()
content := "Started late due to traffic in CA 237"
notes.SetContent(&content) 
contentType := graphmodels.TEXT_BODYTYPE 
notes.SetContentType(&contentType) 
clockInEvent.SetNotes(notes)
requestBody.SetClockInEvent(clockInEvent)
notes := graphmodels.NewItemBody()
content := "8 To 5 Inventory management"
notes.SetContent(&content) 
contentType := graphmodels.TEXT_BODYTYPE 
notes.SetContentType(&contentType) 
requestBody.SetNotes(notes)


timeCardBreak := graphmodels.NewTimeCardBreak()
breakId := "string"
timeCardBreak.SetBreakId(&breakId) 
notes := graphmodels.NewItemBody()
content := "Lunch break"
notes.SetContent(&content) 
contentType := graphmodels.TEXT_BODYTYPE 
notes.SetContentType(&contentType) 
timeCardBreak.SetNotes(notes)
start := graphmodels.NewTimeCardEvent()
dateTime , err := time.Parse(time.RFC3339, "2019-03-18T02:00:00.000Z")
start.SetDateTime(&dateTime) 
atApprovedLocation := true
start.SetAtApprovedLocation(&atApprovedLocation) 
notes := graphmodels.NewItemBody()
content := "Reduced break to make up for lost time"
notes.SetContent(&content) 
contentType := graphmodels.TEXT_BODYTYPE 
notes.SetContentType(&contentType) 
start.SetNotes(notes)
timeCardBreak.SetStart(start)

breaks := []graphmodels.TimeCardBreakable {
	timeCardBreak,

}
requestBody.SetBreaks(breaks)
additionalData := map[string]interface{}{
	"onBehalfOfUserId" : "a3601044-a1b5-438e-b742-f78d01d68a67", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Teams().ByTeamId("team-id").Schedule().TimeCards().Post(context.Background(), requestBody, nil)


```
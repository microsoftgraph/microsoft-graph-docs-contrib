---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewTimeCard()
clockInEvent := msgraphsdk.NewTimeCardEvent()
requestBody.SetClockInEvent(clockInEvent)
dateTime, err := time.Parse(time.RFC3339, "2019-03-18T00:00:00.000Z")
clockInEvent.SetDateTime(&dateTime)
atApprovedLocation := true
clockInEvent.SetAtApprovedLocation(&atApprovedLocation)
notes := msgraphsdk.NewItemBody()
clockInEvent.SetNotes(notes)
content := "Started late due to traffic in CA 237"
notes.SetContent(&content)
contentType := "text"
notes.SetContentType(&contentType)
notes := msgraphsdk.NewItemBody()
requestBody.SetNotes(notes)
content := "8 To 5 Inventory management"
notes.SetContent(&content)
contentType := "text"
notes.SetContentType(&contentType)
requestBody.SetBreaks( []TimeCardBreak {
	msgraphsdk.NewTimeCardBreak(),
breakId := "string"
	SetBreakId(&breakId)
notes := msgraphsdk.NewItemBody()
	SetNotes(notes)
content := "Lunch break"
	notes.SetContent(&content)
contentType := "text"
	notes.SetContentType(&contentType)
start := msgraphsdk.NewTimeCardEvent()
	SetStart(start)
dateTime, err := time.Parse(time.RFC3339, "2019-03-18T02:00:00.000Z")
	start.SetDateTime(&dateTime)
atApprovedLocation := true
	start.SetAtApprovedLocation(&atApprovedLocation)
notes := msgraphsdk.NewItemBody()
	start.SetNotes(notes)
content := "Reduced break to make up for lost time"
	notes.SetContent(&content)
contentType := "text"
	notes.SetContentType(&contentType)
}
requestBody.SetAdditionalData(map[string]interface{}{
	"onBehalfOfUserId": "a3601044-a1b5-438e-b742-f78d01d68a67",
}
teamId := "team-id"
result, err := graphClient.TeamsById(&teamId).Schedule().TimeCards().Post(requestBody)


```
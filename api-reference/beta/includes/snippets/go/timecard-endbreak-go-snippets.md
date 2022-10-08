---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewEndBreakPostRequestBody()
notes := graphmodels.NewItemBody()
contentType := graphmodels.TEXT_BODYTYPE 
notes.SetContentType(&contentType) 
content := "end break smaple notes"
notes.SetContent(&content) 
requestBody.SetNotes(notes)
additionalData := map[string]interface{}{
	atAprovedLocation := true
requestBody.SetAtAprovedLocation(&atAprovedLocation) 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.TeamsById("team-id").Schedule().TimeCardsById("timeCard-id").EndBreak().Post(context.Background(), requestBody, nil)


```
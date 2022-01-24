---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
customPrompt := msgraphsdk.NewPrompt()
requestBody.SetCustomPrompt(customPrompt)
customPrompt.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.mediaPrompt",
}
clientContext := "d45324c1-fcb5-430a-902c-f20af696537c"
requestBody.SetClientContext(&clientContext)
options := &msgraphsdk.StartHoldMusicRequestBuilderPostOptions{
	Body: requestBody,
}
callId := "call-id"
participantId := "participant-id"
result, err := graphClient.Communications().CallsById(&callId).ParticipantsById(&participantId).StartHoldMusic().Post(options)


```
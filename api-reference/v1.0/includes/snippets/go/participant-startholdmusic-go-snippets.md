---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewStartHoldMusicPostRequestBody()
customPrompt := graphmodels.NewPrompt()
"@odata.type" := "#microsoft.graph.mediaPrompt"
customPrompt.Set"@odata.type"(&"@odata.type") 
additionalData := map[string]interface{}{
mediaInfo := graphmodels.New()
"@odata.type" := "#microsoft.graph.mediaInfo"
mediaInfo.Set"@odata.type"(&"@odata.type") 
uri := "https://bot.contoso.com/onHold.wav"
mediaInfo.SetUri(&uri) 
	customPrompt.SetMediaInfo(mediaInfo)
}
customPrompt.SetAdditionalData(additionalData)
requestBody.SetCustomPrompt(customPrompt)
clientContext := "d45324c1-fcb5-430a-902c-f20af696537c"
requestBody.SetClientContext(&clientContext) 

result, err := graphClient.Communications().CallsById("call-id").ParticipantsById("participant-id").StartHoldMusic().Post(requestBody)


```
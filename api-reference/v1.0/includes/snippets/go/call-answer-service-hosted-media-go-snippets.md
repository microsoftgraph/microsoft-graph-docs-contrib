---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
callbackUri := "https://bot.contoso.com/api/calls"
requestBody.SetCallbackUri(&callbackUri)
requestBody.SetAcceptedModalities( []Modality {
	"audio",
}
mediaConfig := msgraphsdk.NewMediaConfig()
requestBody.SetMediaConfig(mediaConfig)
mediaConfig.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.serviceHostedMediaConfig",
	"preFetchMedia":  []Object {
	}
}
options := &msgraphsdk.AnswerRequestBuilderPostOptions{
	Body: requestBody,
}
callId := "call-id"
graphClient.Communications().CallsById(&callId).Answer().Post(options)


```
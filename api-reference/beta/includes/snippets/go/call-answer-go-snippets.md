---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
callbackUri := "callbackUri-value"
requestBody.SetCallbackUri(&callbackUri)
mediaConfig := msgraphsdk.NewMediaConfig()
requestBody.SetMediaConfig(mediaConfig)
mediaConfig.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.appHostedMediaConfig",
	"blob": "<Media Session Configuration Blob>",
}
requestBody.SetAcceptedModalities( []Modality {
	"audio",
}
callOptions := msgraphsdk.NewIncomingCallOptions()
requestBody.SetCallOptions(callOptions)
isContentSharingNotificationEnabled := true
callOptions.SetIsContentSharingNotificationEnabled(&isContentSharingNotificationEnabled)
callOptions.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.incomingCallOptions",
}
participantCapacity := int32(200)
requestBody.SetParticipantCapacity(&participantCapacity)
callId := "call-id"
graphClient.Communications().CallsById(&callId).Answer(call-id).Post(requestBody)


```
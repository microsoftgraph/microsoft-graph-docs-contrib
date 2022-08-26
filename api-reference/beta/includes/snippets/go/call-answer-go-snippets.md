---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAnswerPostRequestBody()
callbackUri := "callbackUri-value"
requestBody.SetCallbackUri(&callbackUri) 
mediaConfig := graphmodels.NewMediaConfig()
additionalData := map[string]interface{}{
	"blob" : "<Media Session Configuration Blob>", 
}
mediaConfig.SetAdditionalData(additionalData)
requestBody.SetMediaConfig(mediaConfig)
acceptedModalities := []graphmodels.Modalityable {
	"audio",

}
requestBody.SetAcceptedModalities(acceptedModalities)
callOptions := graphmodels.NewcallOptions()
isContentSharingNotificationEnabled := true
callOptions.SetIsContentSharingNotificationEnabled(&isContentSharingNotificationEnabled) 
requestBody.SetCallOptions(callOptions)
participantCapacity := int32(200)
requestBody.SetParticipantCapacity(&participantCapacity) 

graphClient.Communications().CallsById("call-id").Answer().Post(requestBody)


```
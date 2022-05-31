---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewCall()
callbackUri := "https://bot.contoso.com/callback"
requestBody.SetCallbackUri(&callbackUri)
requestBody.SetTargets( []InvitationParticipantInfo {
	msgraphsdk.NewInvitationParticipantInfo(),
	SetAdditionalData(map[string]interface{}{
		"@odata.type": "#microsoft.graph.invitationParticipantInfo",
	}
}
requestBody.SetRequestedModalities( []Modality {
	"audio",
}
callOptions := msgraphsdk.NewCallOptions()
requestBody.SetCallOptions(callOptions)
isContentSharingNotificationEnabled := true
callOptions.SetIsContentSharingNotificationEnabled(&isContentSharingNotificationEnabled)
callOptions.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.outgoingCallOptions",
}
mediaConfig := msgraphsdk.NewMediaConfig()
requestBody.SetMediaConfig(mediaConfig)
mediaConfig.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.serviceHostedMediaConfig",
}
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.call",
}
result, err := graphClient.Communications().Calls().Post(requestBody)


```
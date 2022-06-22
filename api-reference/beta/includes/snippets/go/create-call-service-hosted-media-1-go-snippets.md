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
identity := msgraphsdk.NewIdentitySet()
	SetIdentity(identity)
user := msgraphsdk.NewIdentity()
	identity.SetUser(user)
displayName := "John"
	user.SetDisplayName(&displayName)
id := "112f7296-5fa4-42ca-bae8-6a692b15d4b8"
	user.SetId(&id)
	user.SetAdditionalData(map[string]interface{}{
		"@odata.type": "#microsoft.graph.identity",
	}
	identity.SetAdditionalData(map[string]interface{}{
		"@odata.type": "#microsoft.graph.identitySet",
	}
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
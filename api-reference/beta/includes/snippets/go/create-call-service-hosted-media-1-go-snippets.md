---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewCall()
"@odata.type" := "#microsoft.graph.call"
requestBody.Set"@odata.type"(&"@odata.type") 
callbackUri := "https://bot.contoso.com/callback"
requestBody.SetCallbackUri(&callbackUri) 


invitationParticipantInfo := graphmodels.NewInvitationParticipantInfo()
"@odata.type" := "#microsoft.graph.invitationParticipantInfo"
invitationParticipantInfo.Set"@odata.type"(&"@odata.type") 
identity := graphmodels.NewIdentitySet()
"@odata.type" := "#microsoft.graph.identitySet"
identity.Set"@odata.type"(&"@odata.type") 
user := graphmodels.NewIdentity()
"@odata.type" := "#microsoft.graph.identity"
user.Set"@odata.type"(&"@odata.type") 
displayName := "John"
user.SetDisplayName(&displayName) 
id := "112f7296-5fa4-42ca-bae8-6a692b15d4b8"
user.SetId(&id) 
identity.SetUser(user)
invitationParticipantInfo.SetIdentity(identity)

targets := []graphmodels.InvitationParticipantInfoable {
	invitationParticipantInfo,

}
requestBody.SetTargets(targets)
requestedModalities := []graphmodels.Modalityable {
	"audio",

}
requestBody.SetRequestedModalities(requestedModalities)
callOptions := graphmodels.NewCallOptions()
"@odata.type" := "#microsoft.graph.outgoingCallOptions"
callOptions.Set"@odata.type"(&"@odata.type") 
isContentSharingNotificationEnabled := true
callOptions.SetIsContentSharingNotificationEnabled(&isContentSharingNotificationEnabled) 
requestBody.SetCallOptions(callOptions)
mediaConfig := graphmodels.NewMediaConfig()
"@odata.type" := "#microsoft.graph.serviceHostedMediaConfig"
mediaConfig.Set"@odata.type"(&"@odata.type") 
requestBody.SetMediaConfig(mediaConfig)

result, err := graphClient.Communications().Calls().Post(requestBody)


```
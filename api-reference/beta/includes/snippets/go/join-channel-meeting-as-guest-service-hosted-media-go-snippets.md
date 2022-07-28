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
source := graphmodels.NewParticipantInfo()
"@odata.type" := "#microsoft.graph.participantInfo"
source.Set"@odata.type"(&"@odata.type") 
identity := graphmodels.NewIdentitySet()
"@odata.type" := "#microsoft.graph.identitySet"
identity.Set"@odata.type"(&"@odata.type") 
additionalData := map[string]interface{}{
guest := graphmodels.New()
"@odata.type" := "#microsoft.graph.identity"
guest.Set"@odata.type"(&"@odata.type") 
displayName := "Guest User"
guest.SetDisplayName(&displayName) 
id := "d7a3b999-17ac-4bca-9e77-e6a730d2ec2e"
guest.SetId(&id) 
	identity.SetGuest(guest)
}
identity.SetAdditionalData(additionalData)
source.SetIdentity(identity)
requestBody.SetSource(source)
requestedModalities := []graphmodels.Modalityable {
	"audio",

}
requestBody.SetRequestedModalities(requestedModalities)
mediaConfig := graphmodels.NewMediaConfig()
"@odata.type" := "#microsoft.graph.serviceHostedMediaConfig"
mediaConfig.Set"@odata.type"(&"@odata.type") 
additionalData := map[string]interface{}{


 := graphmodels.New()
uri := "https://cdn.contoso.com/beep.wav"
.SetUri(&uri) 
resourceId := "f8971b04-b53e-418c-9222-c82ce681a582"
.SetResourceId(&resourceId) 
 := graphmodels.New()
uri := "https://cdn.contoso.com/cool.wav"
.SetUri(&uri) 
resourceId := "86dc814b-c172-4428-9112-60f8ecae1edb"
.SetResourceId(&resourceId) 

	preFetchMedia := []graphmodels.Objectable {
		,
		,

	}
}
mediaConfig.SetAdditionalData(additionalData)
requestBody.SetMediaConfig(mediaConfig)
chatInfo := graphmodels.NewChatInfo()
"@odata.type" := "#microsoft.graph.chatInfo"
chatInfo.Set"@odata.type"(&"@odata.type") 
threadId := "19:cbee7c1c860e465f8258e3cebf7bee0d@thread.skype"
chatInfo.SetThreadId(&threadId) 
messageId := "1533758867081"
chatInfo.SetMessageId(&messageId) 
requestBody.SetChatInfo(chatInfo)
meetingInfo := graphmodels.NewMeetingInfo()
"@odata.type" := "#microsoft.graph.organizerMeetingInfo"
meetingInfo.Set"@odata.type"(&"@odata.type") 
allowConversationWithoutHost := true
meetingInfo.SetAllowConversationWithoutHost(&allowConversationWithoutHost) 
additionalData := map[string]interface{}{
organizer := graphmodels.New()
"@odata.type" := "#microsoft.graph.identitySet"
organizer.Set"@odata.type"(&"@odata.type") 
user := graphmodels.New()
"@odata.type" := "#microsoft.graph.identity"
user.Set"@odata.type"(&"@odata.type") 
id := "5810cede-f3cc-42eb-b2c1-e9bd5d53ec96"
user.SetId(&id) 
tenantId := "aa67bd4c-8475-432d-bd41-39f255720e0a"
user.SetTenantId(&tenantId) 
displayName := "Bob"
user.SetDisplayName(&displayName) 
	organizer.SetUser(user)
	meetingInfo.SetOrganizer(organizer)
}
meetingInfo.SetAdditionalData(additionalData)
requestBody.SetMeetingInfo(meetingInfo)

result, err := graphClient.Communications().Calls().Post(requestBody)


```
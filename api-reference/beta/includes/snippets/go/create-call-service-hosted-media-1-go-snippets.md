---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewCall()
callbackUri := "https://bot.contoso.com/callback"
requestBody.SetCallbackUri(&callbackUri) 


invitationParticipantInfo := graphmodels.NewInvitationParticipantInfo()
identity := graphmodels.NewIdentitySet()
user := graphmodels.NewIdentity()
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
	modality := graphmodels.AUDIO_MODALITY 
	requestBody.SetModality(&modality)
}
requestBody.SetRequestedModalities(requestedModalities)
callOptions := graphmodels.NewOutgoingCallOptions()
isContentSharingNotificationEnabled := true
callOptions.SetIsContentSharingNotificationEnabled(&isContentSharingNotificationEnabled) 
requestBody.SetCallOptions(callOptions)
mediaConfig := graphmodels.NewServiceHostedMediaConfig()
requestBody.SetMediaConfig(mediaConfig)

calls, err := graphClient.Communications().Calls().Post(context.Background(), requestBody, nil)


```
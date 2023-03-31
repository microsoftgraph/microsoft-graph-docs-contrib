---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewCall()
direction := graphmodels.OUTGOING_CALLDIRECTION 
requestBody.SetDirection(&direction) 
subject := "Create a group call with application hosted media"
requestBody.SetSubject(&subject) 
callbackUri := "https://bot.contoso.com/callback"
requestBody.SetCallbackUri(&callbackUri) 
source := graphmodels.NewParticipantInfo()
identity := graphmodels.NewIdentitySet()
application := graphmodels.NewIdentity()
displayName := "TestBot"
application.SetDisplayName(&displayName) 
id := "dd3885da-f9ab-486b-bfae-85de3d445555"
application.SetId(&id) 
identity.SetApplication(application)
source.SetIdentity(identity)
requestBody.SetSource(source)


invitationParticipantInfo := graphmodels.NewInvitationParticipantInfo()
identity := graphmodels.NewIdentitySet()
user := graphmodels.NewIdentity()
displayName := "user1"
user.SetDisplayName(&displayName) 
id := "98da8a1a-1b87-452c-a713-65d3f10b5555"
user.SetId(&id) 
identity.SetUser(user)
invitationParticipantInfo.SetIdentity(identity)
invitationParticipantInfo1 := graphmodels.NewInvitationParticipantInfo()
identity := graphmodels.NewIdentitySet()
user := graphmodels.NewIdentity()
displayName := "user2"
user.SetDisplayName(&displayName) 
id := "bf5aae9a-d11d-47a8-93b1-782504c95555"
user.SetId(&id) 
identity.SetUser(user)
invitationParticipantInfo1.SetIdentity(identity)

targets := []graphmodels.InvitationParticipantInfoable {
	invitationParticipantInfo,
	invitationParticipantInfo1,

}
requestBody.SetTargets(targets)
requestedModalities := []graphmodels.Modalityable {
	modality := graphmodels.AUDIO_MODALITY 
	requestBody.SetModality(&modality) 

}
requestBody.SetRequestedModalities(requestedModalities)
mediaConfig := graphmodels.NewMediaConfig()
additionalData := map[string]interface{}{
	removeFromDefaultAudioGroup := false
mediaConfig.SetRemoveFromDefaultAudioGroup(&removeFromDefaultAudioGroup) 
}
mediaConfig.SetAdditionalData(additionalData)
requestBody.SetMediaConfig(mediaConfig)

result, err := graphClient.Communications().Calls().Post(context.Background(), requestBody, nil)


```
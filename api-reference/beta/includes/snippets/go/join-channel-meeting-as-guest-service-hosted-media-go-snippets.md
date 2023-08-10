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
source := graphmodels.NewParticipantInfo()
identity := graphmodels.NewIdentitySet()
additionalData := map[string]interface{}{
guest := graphmodels.New()
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
	modality := graphmodels.AUDIO_MODALITY 
	requestBody.SetModality(&modality)
}
requestBody.SetRequestedModalities(requestedModalities)
mediaConfig := graphmodels.NewServiceHostedMediaConfig()


mediaInfo := graphmodels.NewMediaInfo()
uri := "https://cdn.contoso.com/beep.wav"
mediaInfo.SetUri(&uri) 
resourceId := "f8971b04-b53e-418c-9222-c82ce681a582"
mediaInfo.SetResourceId(&resourceId) 
mediaInfo1 := graphmodels.NewMediaInfo()
uri := "https://cdn.contoso.com/cool.wav"
mediaInfo1.SetUri(&uri) 
resourceId := "86dc814b-c172-4428-9112-60f8ecae1edb"
mediaInfo1.SetResourceId(&resourceId) 

preFetchMedia := []graphmodels.MediaInfoable {
	mediaInfo,
	mediaInfo1,
}
mediaConfig.SetPreFetchMedia(preFetchMedia)
requestBody.SetMediaConfig(mediaConfig)
chatInfo := graphmodels.NewChatInfo()
threadId := "19:cbee7c1c860e465f8258e3cebf7bee0d@thread.skype"
chatInfo.SetThreadId(&threadId) 
messageId := "1533758867081"
chatInfo.SetMessageId(&messageId) 
requestBody.SetChatInfo(chatInfo)
meetingInfo := graphmodels.NewOrganizerMeetingInfo()
organizer := graphmodels.NewIdentitySet()
user := graphmodels.NewIdentity()
id := "5810cede-f3cc-42eb-b2c1-e9bd5d53ec96"
user.SetId(&id) 
displayName := "Bob"
user.SetDisplayName(&displayName) 
additionalData := map[string]interface{}{
	"tenantId" : "aa67bd4c-8475-432d-bd41-39f255720e0a", 
}
user.SetAdditionalData(additionalData)
organizer.SetUser(user)
meetingInfo.SetOrganizer(organizer)
allowConversationWithoutHost := true
meetingInfo.SetAllowConversationWithoutHost(&allowConversationWithoutHost) 
requestBody.SetMeetingInfo(meetingInfo)

calls, err := graphClient.Communications().Calls().Post(context.Background(), requestBody, nil)


```
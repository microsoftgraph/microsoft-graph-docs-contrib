---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewCall()
callbackUri := "https://bot.contoso.com/callback"
requestBody.SetCallbackUri(&callbackUri) 
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
threadId := "19:meeting_Win6Ydo4wsMijFjZS00ZGVjLTk5MGUtOTRjNWY2NmNkYTFm@thread.v2"
chatInfo.SetThreadId(&threadId) 
messageId := "0"
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
	"tenantId" : "86dc81db-c112-4228-9222-63f3esaa1edb", 
}
user.SetAdditionalData(additionalData)
organizer.SetUser(user)
meetingInfo.SetOrganizer(organizer)
additionalData := map[string]interface{}{
	allowConversationWithoutHost := true
meetingInfo.SetAllowConversationWithoutHost(&allowConversationWithoutHost) 
}
meetingInfo.SetAdditionalData(additionalData)
requestBody.SetMeetingInfo(meetingInfo)
tenantId := "86dc81db-c112-4228-9222-63f3esaa1edb"
requestBody.SetTenantId(&tenantId) 

calls, err := graphClient.Communications().Calls().Post(context.Background(), requestBody, nil)


```
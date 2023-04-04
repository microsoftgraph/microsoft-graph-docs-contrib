---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
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
requestedModalities := []graphmodels.Modalityable {
	modality := graphmodels.AUDIO_MODALITY 
	requestBody.SetModality(&modality) 

}
requestBody.SetRequestedModalities(requestedModalities)
mediaConfig := graphmodels.NewMediaConfig()
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
threadId := "19:meeting_Win6Ydo4wsMijFjZS00ZGVjLTk5MGUtOTRjNWY2NmNkYTFm@thread.v2"
chatInfo.SetThreadId(&threadId) 
messageId := "0"
chatInfo.SetMessageId(&messageId) 
requestBody.SetChatInfo(chatInfo)
meetingInfo := graphmodels.NewMeetingInfo()
allowConversationWithoutHost := true
meetingInfo.SetAllowConversationWithoutHost(&allowConversationWithoutHost) 
additionalData := map[string]interface{}{
organizer := graphmodels.New()
user := graphmodels.New()
id := "5810cede-f3cc-42eb-b2c1-e9bd5d53ec96"
user.SetId(&id) 
tenantId := "9f386a15-f9cc-445b-8106-ac85e314a07b"
user.SetTenantId(&tenantId) 
displayName := "Bob"
user.SetDisplayName(&displayName) 
	organizer.SetUser(user)
	meetingInfo.SetOrganizer(organizer)
}
meetingInfo.SetAdditionalData(additionalData)
requestBody.SetMeetingInfo(meetingInfo)
tenantId := "86dc81db-c112-4228-9222-63f3esaa1edb"
requestBody.SetTenantId(&tenantId) 

result, err := graphClient.Communications().Calls().Post(context.Background(), requestBody, nil)


```
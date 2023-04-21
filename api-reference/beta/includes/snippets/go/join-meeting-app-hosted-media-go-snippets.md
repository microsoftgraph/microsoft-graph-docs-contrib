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
direction := graphmodels.OUTGOING_CALLDIRECTION 
requestBody.SetDirection(&direction) 
callbackUri := "https://bot.contoso.com/callback"
requestBody.SetCallbackUri(&callbackUri) 
requestedModalities := []graphmodels.Modalityable {
	modality := graphmodels.AUDIO_MODALITY 
	requestBody.SetModality(&modality) 

}
requestBody.SetRequestedModalities(requestedModalities)
mediaConfig := graphmodels.NewMediaConfig()
additionalData := map[string]interface{}{
	"blob" : "<Media Session Configuration>", 
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
tenantId := "aa67bd4c-8475-432d-bd41-39f255720e0a"
user.SetTenantId(&tenantId) 
displayName := "Bob"
user.SetDisplayName(&displayName) 
	organizer.SetUser(user)
	meetingInfo.SetOrganizer(organizer)
}
meetingInfo.SetAdditionalData(additionalData)
requestBody.SetMeetingInfo(meetingInfo)
tenantId := "aa67bd4c-8475-432d-bd41-39f255720e0a"
requestBody.SetTenantId(&tenantId) 

result, err := graphClient.Communications().Calls().Post(context.Background(), requestBody, nil)


```
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
source := graphmodels.NewParticipantInfo()
identity := graphmodels.NewIdentitySet()
application := graphmodels.NewIdentity()
displayName := "Calling Bot"
application.SetDisplayName(&displayName) 
id := "2891555a-92ff-42e6-80fa-6e1300c6b5c6"
application.SetId(&id) 
identity.SetApplication(application)
source.SetIdentity(identity)
region := null
source.SetRegion(&region) 
languageId := null
source.SetLanguageId(&languageId) 
requestBody.SetSource(source)


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
mediaConfig := graphmodels.NewMediaConfig()
additionalData := map[string]interface{}{
	"blob" : "<Media Session Configuration>", 
}
mediaConfig.SetAdditionalData(additionalData)
requestBody.SetMediaConfig(mediaConfig)

result, err := graphClient.Communications().Calls().Post(context.Background(), requestBody, nil)


```
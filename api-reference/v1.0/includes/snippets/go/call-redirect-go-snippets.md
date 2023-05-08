---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/Communications/Calls/Item/Redirect"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewRedirectPostRequestBody()


invitationParticipantInfo := graphmodels.NewInvitationParticipantInfo()
identity := graphmodels.NewIdentitySet()
additionalData := map[string]interface{}{
phone := graphmodels.New()
id := "+12345678901"
phone.SetId(&id) 
	identity.SetPhone(phone)
}
identity.SetAdditionalData(additionalData)
invitationParticipantInfo.SetIdentity(identity)

targets := []graphmodels.InvitationParticipantInfoable {
	invitationParticipantInfo,

}
requestBody.SetTargets(targets)
callbackUri := "https://bot.contoso.com/api/calls/24701998-1a73-4d42-8085-bf46ed0ae039"
requestBody.SetCallbackUri(&callbackUri) 

graphClient.Communications().Calls().ByCallId("call-id").Redirect().Post(context.Background(), requestBody, nil)


```
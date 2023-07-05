---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphcommunications "github.com/microsoftgraph/msgraph-beta-sdk-go/communications"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphcommunications.NewRedirectPostRequestBody()


invitationParticipantInfo := graphmodels.NewInvitationParticipantInfo()
identity := graphmodels.NewIdentitySet()
application := graphmodels.NewIdentity()
displayName := "test bot 2"
application.SetDisplayName(&displayName) 
id := "22bfd41f-550e-477d-8789-f6f7bd2a5e8b"
application.SetId(&id) 
identity.SetApplication(application)
invitationParticipantInfo.SetIdentity(identity)

targets := []graphmodels.InvitationParticipantInfoable {
	invitationParticipantInfo,
}
requestBody.SetTargets(targets)
callbackUri := "https://bot.contoso.com/api/calls/24701998-1a73-4d42-8085-bf46ed0ae039"
requestBody.SetCallbackUri(&callbackUri) 

graphClient.Communications().Calls().ByCallId("call-id").Redirect().Post(context.Background(), requestBody, nil)


```
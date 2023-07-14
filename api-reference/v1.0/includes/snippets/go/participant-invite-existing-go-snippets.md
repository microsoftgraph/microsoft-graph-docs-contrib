---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphcommunications "github.com/microsoftgraph/msgraph-sdk-go/communications"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphcommunications.NewInvitePostRequestBody()


invitationParticipantInfo := graphmodels.NewInvitationParticipantInfo()
replacesCallId := "a7ebfb2d-871e-419c-87af-27290b22e8db"
invitationParticipantInfo.SetReplacesCallId(&replacesCallId) 
identity := graphmodels.NewIdentitySet()
user := graphmodels.NewIdentity()
id := "7e1b4346-85a6-4bdd-abe3-d11c5d420efe"
user.SetId(&id) 
displayName := "string"
user.SetDisplayName(&displayName) 
identity.SetUser(user)
invitationParticipantInfo.SetIdentity(identity)

participants := []graphmodels.InvitationParticipantInfoable {
	invitationParticipantInfo,
}
requestBody.SetParticipants(participants)
clientContext := "f2fa86af-3c51-4bc2-8fc0-475452d9764f"
requestBody.SetClientContext(&clientContext) 

result, err := graphClient.Communications().Calls().ByCallId("call-id").Participants().Invite().Post(context.Background(), requestBody, nil)


```
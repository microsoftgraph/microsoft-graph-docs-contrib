---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewInvitePostRequestBody()


invitationParticipantInfo := graphmodels.NewInvitationParticipantInfo()
additionalData := map[string]interface{}{
	"replacesCallId" : "a7ebfb2d-871e-419c-87af-27290b22e8db", 
	"participantId" : "7d501bf1-5ee4-4605-ba92-0ae4513c611c", 
identity := graphmodels.New()
user := graphmodels.New()
id := "682b6c37-0729-4fab-ace6-d730d5d9137e"
user.SetId(&id) 
identityProvider := "AAD"
user.SetIdentityProvider(&identityProvider) 
	identity.SetUser(user)
	invitationParticipantInfo.SetIdentity(identity)
}
invitationParticipantInfo.SetAdditionalData(additionalData)

participants := []graphmodels.InvitationParticipantInfoable {
	invitationParticipantInfo,

}
requestBody.SetParticipants(participants)
clientContext := "f2fa86af-3c51-4bc2-8fc0-475452d9764f"
requestBody.SetClientContext(&clientContext) 

result, err := graphClient.Communications().CallsById("call-id").Participants().Invite().Post(requestBody)


```
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
identity := graphmodels.New()
user := graphmodels.New()
id := "7e1b4346-85a6-4bdd-abe3-d11c5d420efe"
user.SetId(&id) 
displayName := "string"
user.SetDisplayName(&displayName) 
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
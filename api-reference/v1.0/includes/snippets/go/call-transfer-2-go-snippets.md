---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewTransferPostRequestBody()
transferTarget := graphmodels.NewInvitationParticipantInfo()
identity := graphmodels.NewIdentitySet()
user := graphmodels.NewIdentity()
id := "550fae72-d251-43ec-868c-373732c2704f"
user.SetId(&id) 
displayName := "Heidi Steen"
user.SetDisplayName(&displayName) 
identity.SetUser(user)
transferTarget.SetIdentity(identity)
replacesCallId := "e5d39592-99bd-4db8-bca8-30fb894ec51d"
transferTarget.SetReplacesCallId(&replacesCallId) 
additionalData := map[string]interface{}{
	"endpointType" : "default", 
}
transferTarget.SetAdditionalData(additionalData)
requestBody.SetTransferTarget(transferTarget)

graphClient.Communications().CallsById("call-id").MicrosoftGraphTransfer().Post(context.Background(), requestBody, nil)


```
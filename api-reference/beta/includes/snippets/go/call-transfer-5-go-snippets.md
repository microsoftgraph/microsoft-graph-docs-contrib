---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
transferTarget := msgraphsdk.NewInvitationParticipantInfo()
requestBody.SetTransferTarget(transferTarget)
endpointType := "default"
transferTarget.SetEndpointType(&endpointType)
identity := msgraphsdk.NewIdentitySet()
transferTarget.SetIdentity(identity)
user := msgraphsdk.NewIdentity()
identity.SetUser(user)
id := "550fae72-d251-43ec-868c-373732c2704f"
user.SetId(&id)
displayName := "Heidi Steen"
user.SetDisplayName(&displayName)
user.SetAdditionalData(map[string]interface{}{
	"tenantId": "72f988bf-86f1-41af-91ab-2d7cd011db47",
}
transferee := msgraphsdk.NewParticipantInfo()
requestBody.SetTransferee(transferee)
identity := msgraphsdk.NewIdentitySet()
transferee.SetIdentity(identity)
user := msgraphsdk.NewIdentity()
identity.SetUser(user)
id := "751f6800-3180-414d-bd94-333364659951"
user.SetId(&id)
user.SetAdditionalData(map[string]interface{}{
	"tenantId": "72f988bf-86f1-41af-91ab-2d7cd011db47",
}
participantId := "909c6581-5130-43e9-88f3-fcb3582cde37"
transferee.SetParticipantId(&participantId)
requestBody.SetAdditionalData(map[string]interface{}{
	"languageId": "languageId-value",
	"region": "region-value",
}
options := &msgraphsdk.TransferRequestBuilderPostOptions{
	Body: requestBody,
}
callId := "call-id"
graphClient.Communications().CallsById(&callId).Transfer().Post(options)


```
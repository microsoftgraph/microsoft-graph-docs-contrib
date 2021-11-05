---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

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
	"@odata.type": "#microsoft.graph.identity",
	"tenantId": "72f988bf-86f1-41af-91ab-2d7cd011db47",
}
identity.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.identitySet",
}
replacesCallId := "e5d39592-99bd-4db8-bca8-30fb894ec51d"
transferTarget.SetReplacesCallId(&replacesCallId)
transferTarget.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.invitationParticipantInfo",
	"languageId": "en-us",
	"region": "amer",
}
options := &msgraphsdk.TransferRequestBuilderPostOptions{
	Body: requestBody,
}
callId := "call-id"
graphClient.Communications().CallsById(&callId).Transfer().Post(options);


```
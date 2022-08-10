---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewTransferPostRequestBody()
transferTarget := graphmodels.NewInvitationParticipantInfo()
"@odata.type" := "#microsoft.graph.invitationParticipantInfo"
transferTarget.Set"@odata.type"(&"@odata.type") 
endpointType := graphmodels.DEFAULT_ENDPOINTTYPE 
transferTarget.SetEndpointType(&endpointType) 
identity := graphmodels.NewIdentitySet()
"@odata.type" := "#microsoft.graph.identitySet"
identity.Set"@odata.type"(&"@odata.type") 
user := graphmodels.NewIdentity()
"@odata.type" := "#microsoft.graph.identity"
user.Set"@odata.type"(&"@odata.type") 
id := "550fae72-d251-43ec-868c-373732c2704f"
user.SetId(&id) 
displayName := "Heidi Steen"
user.SetDisplayName(&displayName) 
additionalData := map[string]interface{}{
	"tenantId" : "72f988bf-86f1-41af-91ab-2d7cd011db47", 
}
user.SetAdditionalData(additionalData)
identity.SetUser(user)
transferTarget.SetIdentity(identity)
replacesCallId := "e5d39592-99bd-4db8-bca8-30fb894ec51d"
transferTarget.SetReplacesCallId(&replacesCallId) 
additionalData := map[string]interface{}{
	"languageId" : "en-us", 
	"region" : "amer", 
}
transferTarget.SetAdditionalData(additionalData)
requestBody.SetTransferTarget(transferTarget)

graphClient.Communications().CallsById("call-id").Transfer().Post(requestBody)


```
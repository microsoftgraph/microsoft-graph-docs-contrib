---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewTransferPostRequestBody()
transferTarget := graphmodels.NewInvitationParticipantInfo()
identity := graphmodels.NewIdentitySet()
additionalData := map[string]interface{}{
phone := graphmodels.New()
id := "+12345678901"
phone.SetId(&id) 
	identity.SetPhone(phone)
}
identity.SetAdditionalData(additionalData)
transferTarget.SetIdentity(identity)
additionalData := map[string]interface{}{
	"endpointType" : "default", 
	"languageId" : "languageId-value", 
	"region" : "region-value", 
}
transferTarget.SetAdditionalData(additionalData)
requestBody.SetTransferTarget(transferTarget)
additionalData := map[string]interface{}{
	"clientContext" : "9e90d1c1-f61e-43e7-9f75-d420159aae08", 
}
requestBody.SetAdditionalData(additionalData)

graphClient.Communications().CallsById("call-id").Transfer().Post(requestBody)


```
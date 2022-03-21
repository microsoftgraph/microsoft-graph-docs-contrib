---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewServicePrincipal()
customSecurityAttributes := msgraphsdk.NewCustomSecurityAttributeValue()
requestBody.SetCustomSecurityAttributes(customSecurityAttributes)
customSecurityAttributes.SetAdditionalData(map[string]interface{}{
}
options := &msgraphsdk.ServicePrincipalRequestBuilderPatchOptions{
	Body: requestBody,
}
servicePrincipalId := "servicePrincipal-id"
graphClient.ServicePrincipalsById(&servicePrincipalId).Patch(options)


```
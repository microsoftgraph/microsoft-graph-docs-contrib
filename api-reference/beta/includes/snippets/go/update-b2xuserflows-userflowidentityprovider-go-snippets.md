---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.id": "https://graph.microsoft.com/beta/identity/identityProviders/B2X_1_Test",
	"@odata.type": "#microsoft.graph.identityProvider",
}
options := &msgraphsdk.RefRequestBuilderPatchOptions{
	Body: requestBody,
}
b2xIdentityUserFlowId := "b2xIdentityUserFlow-id"
graphClient.Identity().B2xUserFlowsById(&b2xIdentityUserFlowId).UserFlowIdentityProviders().$ref().Patch(options)


```
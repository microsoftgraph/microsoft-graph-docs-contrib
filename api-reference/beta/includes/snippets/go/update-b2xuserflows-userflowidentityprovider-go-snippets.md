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
options := &msgraphsdk.IdentityProviderBaseRequestBuilderPatchOptions{
	Body: requestBody,
}
b2xIdentityUserFlowId := "b2xIdentityUserFlow-id"
identityProviderBaseId := "identityProviderBase-id"
graphClient.Identity().B2xUserFlowsById(&b2xIdentityUserFlowId).UserFlowIdentityProvidersById(&identityProviderBaseId).Patch(options)


```
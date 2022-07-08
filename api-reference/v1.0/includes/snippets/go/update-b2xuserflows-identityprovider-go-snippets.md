---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.id": "https://graph.microsoft.com/v1.0/identityProviders/Facebook-OAUTH",
}
b2xIdentityUserFlowId := "b2xIdentityUserFlow-id"
identityProviderId := "identityProvider-id"
graphClient.Identity().B2xUserFlowsById(&b2xIdentityUserFlowId).IdentityProvidersById(&identityProviderId).Post(requestBody)


```
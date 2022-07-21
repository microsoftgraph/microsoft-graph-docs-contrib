---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewUserFlowIdentityProvider()
additionalData := map[string]interface{}{
	"@odata.id" : "https://graph.microsoft.com/beta/identity/identityProviders/{id}", 
	"@odata.type" : "#microsoft.graph.identityProvider", 
}
requestBody.SetAdditionalData(additionalData)

graphClient.Identity().B2cUserFlowsById("b2cIdentityUserFlow-id").UserFlowIdentityProvidersById("identityProviderBase-id").Patch(requestBody)


```
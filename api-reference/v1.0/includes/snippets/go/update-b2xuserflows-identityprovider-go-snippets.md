---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewIdentityProvider()
additionalData := map[string]interface{}{
	"odataId" : "https://graph.microsoft.com/v1.0/identityProviders/Facebook-OAUTH", 
}
requestBody.SetAdditionalData(additionalData)

graphClient.Identity().B2xUserFlowsById("b2xIdentityUserFlow-id").IdentityProvidersById("identityProvider-id").Post(context.Background(), requestBody, nil)


```
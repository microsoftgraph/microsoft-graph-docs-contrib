---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewIdentityProviderBase()
"@odata.type" := "microsoft.graph.socialIdentityProvider"
requestBody.Set"@odata.type"(&"@odata.type") 
displayName := "Login with Amazon"
requestBody.SetDisplayName(&displayName) 
additionalData := map[string]interface{}{
	"identityProviderType" : "Amazon", 
	"clientId" : "56433757-cadd-4135-8431-2c9e3fd68ae8", 
	"clientSecret" : "000000000000", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Identity().IdentityProviders().Post(requestBody)


```
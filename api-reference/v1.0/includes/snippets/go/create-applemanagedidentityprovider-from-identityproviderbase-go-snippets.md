---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewIdentityProviderBase()
"@odata.type" := "microsoft.graph.appleManagedIdentityProvider"
requestBody.Set"@odata.type"(&"@odata.type") 
displayName := "Sign in with Apple"
requestBody.SetDisplayName(&displayName) 
additionalData := map[string]interface{}{
	"developerId" : "UBF8T346G9", 
	"serviceId" : "com.microsoft.rts.b2c.test.client", 
	"keyId" : "99P6D879C4", 
	"certificateData" : "******", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Identity().IdentityProviders().Post(requestBody)


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewIdentityProviderBase()
"@odata.type" := "#microsoft.graph.socialIdentityProvider"
requestBody.Set"@odata.type"(&"@odata.type") 
additionalData := map[string]interface{}{
	"responseType" : "id_token", 
}
requestBody.SetAdditionalData(additionalData)

graphClient.Identity().IdentityProvidersById("identityProviderBase-id").Patch(requestBody)


```
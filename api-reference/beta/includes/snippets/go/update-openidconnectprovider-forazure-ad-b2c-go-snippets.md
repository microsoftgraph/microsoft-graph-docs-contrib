---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewIdentityProviderBase()
additionalData := map[string]interface{}{
	"responseType" : "id_token", 
}
requestBody.SetAdditionalData(additionalData)

graphClient.Identity().IdentityProvidersById("identityProviderBase-id").Patch(context.Background(), requestBody, nil)


```
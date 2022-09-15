---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewIdentityProvider()
additionalData := map[string]interface{}{
	"responseType" : "id_token", 
}
requestBody.SetAdditionalData(additionalData)

graphClient.IdentityProvidersById("identityProvider-id").Patch(context.Background(), requestBody, nil)


```
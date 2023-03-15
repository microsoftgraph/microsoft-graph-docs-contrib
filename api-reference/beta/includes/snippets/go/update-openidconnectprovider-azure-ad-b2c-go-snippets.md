---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewIdentityProvider()
additionalData := map[string]interface{}{
	"responseType" : "id_token", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.IdentityProvidersById("identityProvider-id").Patch(context.Background(), requestBody, nil)


```
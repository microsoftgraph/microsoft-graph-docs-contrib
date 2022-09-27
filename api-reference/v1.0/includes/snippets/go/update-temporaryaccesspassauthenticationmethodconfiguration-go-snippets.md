---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAuthenticationMethodConfiguration()
additionalData := map[string]interface{}{
	isUsableOnce := true
requestBody.SetIsUsableOnce(&isUsableOnce) 
}
requestBody.SetAdditionalData(additionalData)

graphClient.Policies().AuthenticationMethodsPolicy().AuthenticationMethodConfigurationsById("authenticationMethodConfiguration-id").Patch(context.Background(), requestBody, nil)


```
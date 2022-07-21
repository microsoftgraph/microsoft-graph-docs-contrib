---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewEmailMethod()
additionalData := map[string]interface{}{
	"emailAddress" : "kim@contoso.com", 
}
requestBody.SetAdditionalData(additionalData)

graphClient.UsersById("user-id").Authentication().EmailMethodsById("emailAuthenticationMethod-id").Put(requestBody)


```
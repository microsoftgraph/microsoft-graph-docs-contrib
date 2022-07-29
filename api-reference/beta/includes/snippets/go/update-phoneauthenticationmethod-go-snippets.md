---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewPhoneMethod()
additionalData := map[string]interface{}{
	"phoneNumber" : "+1 2065555554", 
	"phoneType" : "mobile", 
}
requestBody.SetAdditionalData(additionalData)

graphClient.Me().Authentication().PhoneMethodsById("phoneAuthenticationMethod-id").Put(requestBody)


```
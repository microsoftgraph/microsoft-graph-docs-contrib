---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewTokenLifetimePoliciesPostRequestBody()
additionalData := map[string]interface{}{
	"@odata.id" : "https://graph.microsoft.com/beta/policies/tokenLifetimePolicies/cd3d9b57-0aee-4f25-8ee3-ac74ef5986a9", 
}
requestBody.SetAdditionalData(additionalData)

graphClient.ApplicationsById("application-id").TokenLifetimePolicies().Post(requestBody)


```
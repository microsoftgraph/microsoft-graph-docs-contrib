---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewReferenceCreate()
"@odata.id" := "https://graph.microsoft.com/v1.0/directoryObjects/2441b489-4f12-4882-b039-8f6006bd66da"
requestBody.Set"@odata.id"(&"@odata.id") 

graphClient.Policies().FeatureRolloutPoliciesById("featureRolloutPolicy-id").AppliesTo().$ref().Post(requestBody)


```
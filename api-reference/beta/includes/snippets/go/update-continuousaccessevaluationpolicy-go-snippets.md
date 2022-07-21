---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewContinuousAccessEvaluationPolicy()
"@odata.type" := "#microsoft.graph.continuousAccessEvaluationPolicy"
requestBody.Set"@odata.type"(&"@odata.type") 
migrate := true
requestBody.SetMigrate(&migrate) 

graphClient.Identity().ContinuousAccessEvaluationPolicy().Patch(requestBody)


```
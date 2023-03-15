---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewContinuousAccessEvaluationPolicy()
migrate := true
requestBody.SetMigrate(&migrate) 

result, err := graphClient.Identity().ContinuousAccessEvaluationPolicy().Patch(context.Background(), requestBody, nil)


```
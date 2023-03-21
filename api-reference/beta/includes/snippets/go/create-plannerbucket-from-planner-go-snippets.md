---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewPlannerBucket()
name := "Advertising"
requestBody.SetName(&name) 
planId := "xqQg5FS2LkCp935s-FIFm2QAFkHM"
requestBody.SetPlanId(&planId) 
orderHint := " !"
requestBody.SetOrderHint(&orderHint) 

result, err := graphClient.Planner().Buckets().Post(context.Background(), requestBody, nil)


```
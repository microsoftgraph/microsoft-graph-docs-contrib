---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewPlannerPlan()
owner := "ebf3b108-5234-4e22-b93d-656d7dae5874"
requestBody.SetOwner(&owner) 
title := "title-value"
requestBody.SetTitle(&title) 

result, err := graphClient.Planner().Plans().Post(requestBody)


```
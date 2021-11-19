---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewPlannerPlan()
owner := "ebf3b108-5234-4e22-b93d-656d7dae5874"
requestBody.SetOwner(&owner)
title := "title-value"
requestBody.SetTitle(&title)
options := &msgraphsdk.PlansRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Planner().Plans().Post(options)


```
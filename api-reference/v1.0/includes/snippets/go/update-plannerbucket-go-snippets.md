---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := abstractions.NewRequestHeaders()
headers.Add("Prefer", "return=representation")
headers.Add("If-Match", "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"")

configuration := &graphconfig.PlannerBucketItemRequestBuilderPatchRequestConfiguration{
	Headers: headers,
}
requestBody := graphmodels.NewPlannerBucket()
name := "Development"
requestBody.SetName(&name) 

result, err := graphClient.Planner().BucketsById("plannerBucket-id").Patch(context.Background(), requestBody, configuration)


```
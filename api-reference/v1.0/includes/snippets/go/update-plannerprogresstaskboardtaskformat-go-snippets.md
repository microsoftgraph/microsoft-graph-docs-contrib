---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

headers := abstractions.NewRequestHeaders()
headers.Add("Prefer", "return=representation")
headers.Add("If-Match", "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"")

configuration := &graphconfig.PlannerTaskItemProgressTaskBoardFormatRequestBuilderPatchRequestConfiguration{
	Headers: headers,
}
requestBody := graphmodels.NewPlannerProgressTaskBoardTaskFormat()
orderHint := "A6673H Ejkl!"
requestBody.SetOrderHint(&orderHint) 

result, err := graphClient.Planner().TasksById("plannerTask-id").ProgressTaskBoardFormat().Patch(context.Background(), requestBody, configuration)


```
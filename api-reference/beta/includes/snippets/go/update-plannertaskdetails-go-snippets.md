---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := map[string]string{
	"Prefer": "return=representation"
	"If-Match": "W/"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=""
}
options := &msgraphsdk.DetailsRequestBuilderPatchOptions{
	H: headers,
}
plannerTaskId := "plannerTask-id"
graphClient.Planner().TasksById(&plannerTaskId).Details().Patch(options)


```
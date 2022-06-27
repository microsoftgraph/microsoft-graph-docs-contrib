---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := map[string]string{
	"If-Match": "W/"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=""
}
options := &msgraphsdk.PlannerTaskRequestBuilderDeleteRequestConfiguration{
	Headers: headers,
}
plannerTaskId := "plannerTask-id"
graphClient.Planner().TasksById(&plannerTaskId).DeleteWithRequestConfigurationAndResponseHandler(options, nil)


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewPlannerTask()
assignments := msgraphsdk.NewPlannerAssignments()
requestBody.SetAssignments(assignments)
assignments.SetAdditionalData(map[string]interface{}{
}
appliedCategories := msgraphsdk.NewPlannerAppliedCategories()
requestBody.SetAppliedCategories(appliedCategories)
appliedCategories.SetAdditionalData(map[string]interface{}{
	"category3": true,
	"category4": false,
}
headers := map[string]string{
	"Prefer": "return=representation"
	"If-Match": "W/"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=""
}
options := &msgraphsdk.PlannerTaskRequestBuilderPatchOptions{
	Body: requestBody,
	H: headers,
}
plannerTaskId := "plannerTask-id"
graphClient.Planner().TasksById(&plannerTaskId).Patch(options)


```
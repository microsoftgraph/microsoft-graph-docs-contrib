---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewPlannerAssignedToTaskBoardTaskFormat()
orderHintsByAssignee := msgraphsdk.NewPlannerOrderHintsByAssignee()
requestBody.SetOrderHintsByAssignee(orderHintsByAssignee)
orderHintsByAssignee.SetAdditionalData(map[string]interface{}{
	"aaa27244-1db4-476a-a5cb-004607466324": "8566473P 957764Jk!",
}
headers := map[string]string{
	"Prefer": "return=representation"
	"If-Match": "W/"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=""
}
options := &msgraphsdk.AssignedToTaskBoardFormatRequestBuilderPatchOptions{
	Body: requestBody,
	H: headers,
}
plannerTaskId := "plannerTask-id"
graphClient.Planner().TasksById(&plannerTaskId).AssignedToTaskBoardFormat().Patch(options)


```
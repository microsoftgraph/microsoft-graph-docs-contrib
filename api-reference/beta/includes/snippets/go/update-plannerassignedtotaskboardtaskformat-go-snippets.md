---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := map[string]string{
	"Prefer": "return=representation",
	"If-Match": "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"",
}
configuration := &graphconfig.AssignedToTaskBoardFormatRequestBuilderPatchRequestConfiguration{
	Headers: headers,
}
requestBody := graphmodels.NewPlannerAssignedToTaskBoardTaskFormat()
orderHintsByAssignee := graphmodels.NewPlannerOrderHintsByAssignee()
additionalData := map[string]interface{}{
	"aaa27244-1db4-476a-a5cb-004607466324" : "8566473P 957764Jk!", 
}
orderHintsByAssignee.SetAdditionalData(additionalData)
requestBody.SetOrderHintsByAssignee(orderHintsByAssignee)

result, err := graphClient.Planner().TasksById("plannerTask-id").AssignedToTaskBoardFormat().Patch(context.Background(), requestBody, configuration)


```
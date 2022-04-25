---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewPrintTask()
status := msgraphsdk.NewPrintTaskStatus()
requestBody.SetStatus(status)
state := "completed"
status.SetState(&state)
description := "completed"
status.SetDescription(&description)
options := &msgraphsdk.PrintTaskRequestBuilderPatchOptions{
	Body: requestBody,
}
printTaskDefinitionId := "printTaskDefinition-id"
printTaskId := "printTask-id"
graphClient.Print().TaskDefinitionsById(&printTaskDefinitionId).TasksById(&printTaskId).Patch(options)


```
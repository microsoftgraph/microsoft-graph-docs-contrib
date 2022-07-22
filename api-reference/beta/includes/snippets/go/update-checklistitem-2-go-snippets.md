---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewChecklistItem()
displayName := "buy cake"
requestBody.SetDisplayName(&displayName) 

graphClient.Me().Tasks().ListsById("baseTaskList-id").TasksById("baseTask-id").ChecklistItemsById("checklistItem-id").Patch(requestBody)


```
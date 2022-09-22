---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewChecklistItem()
displayName := "Final sign-off from the team"
requestBody.SetDisplayName(&displayName) 

result, err := graphClient.Me().Tasks().ListsById("baseTaskList-id").TasksById("baseTask-id").ChecklistItems().Post(context.Background(), requestBody, nil)


```
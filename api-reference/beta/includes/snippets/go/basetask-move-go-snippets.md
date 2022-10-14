---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewMovePostRequestBody()
destinationTaskListId := "AAMkAGVjMzJmMWZjLTgyYjgtNGIyNi1hOGQ0LWRjMjNmMGRmOWNiYQAuAAAAAAAboFsPFj7gQqFxG"
requestBody.SetDestinationTaskListId(&destinationTaskListId) 

result, err := graphClient.Me().Tasks().ListsById("baseTaskList-id").TasksById("baseTask-id").Move().Post(context.Background(), requestBody, nil)


```
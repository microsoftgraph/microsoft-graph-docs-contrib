---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewTodoTask()
dueDateTime := graphmodels.NewDateTimeTimeZone()
dateTime := "2020-07-25T16:00:00"
dueDateTime.SetDateTime(&dateTime) 
timeZone := "Eastern Standard Time"
dueDateTime.SetTimeZone(&timeZone) 
requestBody.SetDueDateTime(dueDateTime)

graphClient.Me().Todo().ListsById("todoTaskList-id").TasksById("todoTask-id").Patch(context.Background(), requestBody, nil)


```
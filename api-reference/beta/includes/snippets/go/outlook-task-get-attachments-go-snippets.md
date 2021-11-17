---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

userId := "user-id"
outlookTaskId := "outlookTask-id"
result, err := graphClient.UsersById(&userId).Outlook().TasksById(&outlookTaskId).Attachments().Get(options)


```
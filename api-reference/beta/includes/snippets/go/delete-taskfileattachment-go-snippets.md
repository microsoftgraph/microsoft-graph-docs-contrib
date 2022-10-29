---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


graphClient.Me().Todo().ListsById("todoTaskList-id").TasksById("todoTask-id").AttachmentsById("attachmentBase-id").Delete(context.Background(), nil)


```
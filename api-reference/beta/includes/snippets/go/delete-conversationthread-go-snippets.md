---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

groupId := "group-id"
conversationThreadId := "conversationThread-id"
graphClient.GroupsById(&groupId).ThreadsById(&conversationThreadId).Delete(options)


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

messageId := "message-id"
mentionId := "mention-id"
graphClient.Me().MessagesById(&messageId).MentionsById(&mentionId).Delete(options)


```
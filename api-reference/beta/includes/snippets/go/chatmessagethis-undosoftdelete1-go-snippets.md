---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


graphClient.UsersById("user-id").ChatsById("chat-id").MessagesById("chatMessage-id").UndoSoftDelete().Post()


```
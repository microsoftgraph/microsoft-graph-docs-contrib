---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

chatId := "chat-id"
conversationMemberId := "conversationMember-id"
result, err := graphClient.ChatsById(&chatId).MembersById(&conversationMemberId).Get(nil)


```
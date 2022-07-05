---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewConversationThread()
topic := "Take your wellness days and rest"
requestBody.SetTopic(&topic)
requestBody.SetPosts( []Post {
	msgraphsdk.NewPost(),
body := msgraphsdk.NewItemBody()
	SetBody(body)
contentType := "html"
	body.SetContentType(&contentType)
content := "Waiting for the summer holidays."
	body.SetContent(&content)
}
groupId := "group-id"
conversationId := "conversation-id"
result, err := graphClient.GroupsById(&groupId).ConversationsById(&conversationId).Threads().Post(requestBody)


```
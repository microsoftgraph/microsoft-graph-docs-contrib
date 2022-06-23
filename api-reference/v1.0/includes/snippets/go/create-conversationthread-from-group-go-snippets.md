---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewConversationThread()
topic := "New Conversation Thread Topic"
requestBody.SetTopic(&topic)
requestBody.SetPosts( []Post {
	msgraphsdk.NewPost(),
body := msgraphsdk.NewItemBody()
	SetBody(body)
contentType := "html"
	body.SetContentType(&contentType)
content := "this is body content"
	body.SetContent(&content)
	SetNewParticipants( []Recipient {
		msgraphsdk.NewRecipient(),
		SetAdditionalData(map[string]interface{}{
		}
	}
}
groupId := "group-id"
result, err := graphClient.GroupsById(&groupId).Threads().Post(requestBody)


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewConversation()
topic := "New head count"
requestBody.SetTopic(&topic)
requestBody.SetThreads( []ConversationThread {
	msgraphsdk.NewConversationThread(),
	SetPosts( []Post {
		msgraphsdk.NewPost(),
body := msgraphsdk.NewItemBody()
		SetBody(body)
contentType := "html"
		body.SetContentType(&contentType)
content := "The confirmation will come by the end of the week."
		body.SetContent(&content)
		SetNewParticipants( []Recipient {
			msgraphsdk.NewRecipient(),
			SetAdditionalData(map[string]interface{}{
			}
		}
	}
}
groupId := "group-id"
result, err := graphClient.GroupsById(&groupId).Conversations().Post(requestBody)


```
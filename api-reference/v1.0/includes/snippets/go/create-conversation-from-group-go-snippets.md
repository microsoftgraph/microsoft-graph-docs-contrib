---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewConversation()
topic := "Take your wellness days and rest"
requestBody.SetTopic(&topic)
requestBody.SetThreads( []ConversationThread {
	msgraphsdk.NewConversationThread(),
	SetPosts( []Post {
		msgraphsdk.NewPost(),
body := msgraphsdk.NewItemBody()
		SetBody(body)
contentType := "html"
		body.SetContentType(&contentType)
content := "Contoso cares about you: Rest and Recharge"
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
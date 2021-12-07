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
	SetAdditionalData(map[string]interface{}{
		"newParticipants":  []Object {
		}
	}
}
options := &msgraphsdk.ThreadsRequestBuilderPostOptions{
	Body: requestBody,
}
groupId := "group-id"
result, err := graphClient.GroupsById(&groupId).Threads().Post(options)


```
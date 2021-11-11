---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewConversation()
topic := "Does anyone have a second?"
requestBody.SetTopic(&topic)
requestBody.SetThreads( []ConversationThread {
	msgraphsdk.NewConversationThread(),
	SetAdditionalData(map[string]interface{}{
		"Posts":  []Object {
		}
	}
}
options := &msgraphsdk.ConversationsRequestBuilderPostOptions{
	Body: requestBody,
}
groupId := "group-id"
result, err := graphClient.GroupsById(&groupId).Conversations().Post(options);


```
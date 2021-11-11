---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestParameters := &msgraphsdk.ChatsRequestBuilderGetQueryParameters{
	Expand: "lastMessagePreview",
}
options := &msgraphsdk.ChatsRequestBuilderGetOptions{
	Q: requestParameters,
}
result, err := graphClient.Chats().Get(options)


```
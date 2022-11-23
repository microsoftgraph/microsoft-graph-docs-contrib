---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.ChatRequestBuilderGetQueryParameters{
	Expand: [] string {"lastMessagePreview"},
}
configuration := &graphconfig.ChatRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.ChatsById("chat-id").Get(context.Background(), configuration)


```
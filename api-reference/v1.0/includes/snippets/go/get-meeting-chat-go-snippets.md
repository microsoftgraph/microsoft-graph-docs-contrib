---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestParameters := &graphconfig.ChatItemRequestBuilderGetQueryParameters{
	Expand: [] string {"lastMessagePreview"},
}
configuration := &graphconfig.ChatItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.ChatsById("chat-id").Get(context.Background(), configuration)


```
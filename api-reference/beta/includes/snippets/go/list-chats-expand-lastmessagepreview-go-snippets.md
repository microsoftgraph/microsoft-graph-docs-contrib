---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestParameters := &graphconfig.ChatsRequestBuilderGetQueryParameters{
	Expand: [] string {"lastMessagePreview"},
}
configuration := &graphconfig.ChatsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Chats().Get(context.Background(), configuration)


```
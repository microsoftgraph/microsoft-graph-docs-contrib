---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.PinnedMessagesRequestBuilderGetQueryParameters{
	Expand: [] string {"message"},
}
configuration := &graphconfig.PinnedMessagesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.ChatsById("chat-id").PinnedMessages().Get(context.Background(), configuration)


```
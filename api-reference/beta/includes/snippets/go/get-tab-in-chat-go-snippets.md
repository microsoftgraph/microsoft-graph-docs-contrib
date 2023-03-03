---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.ChatItemTabItemRequestBuilderGetQueryParameters{
	Expand: [] string {"teamsApp"},
}
configuration := &graphconfig.ChatItemTabItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.ChatsById("chat-id").TabsById("teamsTab-id").Get(context.Background(), configuration)


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestTop := int32(2)

requestParameters := &graphconfig.ChatItemMessagesRequestBuilderGetQueryParameters{
	Top: &requestTop,
}
configuration := &graphconfig.ChatItemMessagesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.ChatsById("chat-id").Messages().Get(context.Background(), configuration)


```
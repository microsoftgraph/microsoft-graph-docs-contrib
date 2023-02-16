---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestTop := int32(2)

requestParameters := &graphconfig.UserItemChatsMicrosoft.graph.getAllMessages()RequestBuilderGetQueryParameters{
	Top: &requestTop,
}
configuration := &graphconfig.UserItemChatsMicrosoft.graph.getAllMessages()RequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.UsersById("user-id").Chats().GetAllMessages().Get(context.Background(), configuration)


```
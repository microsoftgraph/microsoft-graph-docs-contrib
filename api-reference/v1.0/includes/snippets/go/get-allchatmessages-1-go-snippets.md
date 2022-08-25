---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestTop := int32(2)

requestParameters := &graphconfig.MessagesRequestBuilderGetQueryParameters{
	Top: &requestTop,
}
configuration := &graphconfig.MessagesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.ChatsById("chat-id").Messages().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```
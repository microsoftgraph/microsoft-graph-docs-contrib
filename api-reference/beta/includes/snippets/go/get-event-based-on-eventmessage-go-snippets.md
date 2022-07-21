---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.MessageRequestBuilderGetQueryParameters{
	Expand: [] string {"microsoft.graph.eventMessage/event"},
}
configuration := &graphconfig.MessageRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().MessagesById("message-id").GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```
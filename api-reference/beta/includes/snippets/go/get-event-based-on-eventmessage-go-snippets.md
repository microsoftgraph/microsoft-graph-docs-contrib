---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.MeMessageItemRequestBuilderGetQueryParameters{
	Expand: [] string {"microsoft.graph.eventMessage/event"},
}
configuration := &graphconfig.MeMessageItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().MessagesById("message-id").Get(context.Background(), configuration)


```
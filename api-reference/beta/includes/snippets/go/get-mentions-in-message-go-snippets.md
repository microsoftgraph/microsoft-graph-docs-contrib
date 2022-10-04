---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.MessageRequestBuilderGetQueryParameters{
	Expand: [] string {"mentions"},
}
configuration := &graphconfig.MessageRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().MessagesById("message-id").Get(context.Background(), configuration)


```
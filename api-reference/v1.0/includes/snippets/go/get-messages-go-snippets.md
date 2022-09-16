---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.MessagesRequestBuilderGetQueryParameters{
	Select: [] string {"sender","subject"},
}
configuration := &graphconfig.MessagesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().Messages().Get(context.Background(), configuration)


```
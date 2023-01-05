---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestSkip := int32(20)

requestParameters := &graphconfig.EventsRequestBuilderGetQueryParameters{
	Orderby: [] string {"createdDateTime"},
	Skip: &requestSkip,
}
configuration := &graphconfig.EventsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().Events().Get(context.Background(), configuration)


```
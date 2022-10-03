---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestTop := int32(100)
requestSkip := int32(0)

requestParameters := &graphconfig.PendingAccessReviewInstancesRequestBuilderGetQueryParameters{
	Expand: [] string {"definition"},
	Top: &requestTop,
	Skip: &requestSkip,
}
configuration := &graphconfig.PendingAccessReviewInstancesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().PendingAccessReviewInstances().Get(context.Background(), configuration)


```
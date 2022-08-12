---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.PendingAccessReviewInstancesRequestBuilderGetQueryParameters{
	Expand: [] string {"definition"},
	Top: 100,
	Skip: 0,
}
configuration := &graphconfig.PendingAccessReviewInstancesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().PendingAccessReviewInstances().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```
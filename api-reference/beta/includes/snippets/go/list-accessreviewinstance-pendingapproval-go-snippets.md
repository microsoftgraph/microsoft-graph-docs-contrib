---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestParameters := &msgraphsdk.PendingAccessReviewInstancesRequestBuilderGetQueryParameters{
	Expand: "definition",
	Top: 100,
	Skip: 0,
}
options := &msgraphsdk.PendingAccessReviewInstancesRequestBuilderGetOptions{
	Q: requestParameters,
}
result, err := graphClient.Me().PendingAccessReviewInstances().Get(options)


```
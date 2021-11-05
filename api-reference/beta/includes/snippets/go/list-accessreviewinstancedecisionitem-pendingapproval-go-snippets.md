---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestParameters := &msgraphsdk.DecisionsRequestBuilderGetQueryParameters{
	Top: 100,
	Skip: 0,
}
options := &msgraphsdk.DecisionsRequestBuilderGetOptions{
	Q: requestParameters,
}
accessReviewInstanceId := "accessReviewInstance-id"
result, err := graphClient.Me().PendingAccessReviewInstancesById(&accessReviewInstanceId).Decisions().Get(options);


```
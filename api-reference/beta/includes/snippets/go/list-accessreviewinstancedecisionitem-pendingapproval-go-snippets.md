---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestTop := int32(100)
requestSkip := int32(0)

requestParameters := &graphconfig.MePendingAccessReviewInstanceItemDecisionsRequestBuilderGetQueryParameters{
	Top: &requestTop,
	Skip: &requestSkip,
}
configuration := &graphconfig.MePendingAccessReviewInstanceItemDecisionsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().PendingAccessReviewInstancesById("accessReviewInstance-id").Decisions().Get(context.Background(), configuration)


```
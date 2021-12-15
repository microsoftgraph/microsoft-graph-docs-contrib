---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

accessReviewInstanceId := "accessReviewInstance-id"
accessReviewInstanceDecisionItemId := "accessReviewInstanceDecisionItem-id"
graphClient.Me().PendingAccessReviewInstancesById(&accessReviewInstanceId).DecisionsById(&accessReviewInstanceDecisionItemId).Patch(nil)


```
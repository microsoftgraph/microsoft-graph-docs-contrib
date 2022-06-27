---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.AccessReviewInstanceDecisionItemRequestBuilderGetQueryParameters{
	Expand: "instance($expand=definition)",
}
options := &msgraphsdk.AccessReviewInstanceDecisionItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}
accessReviewInstanceDecisionItemId := "accessReviewInstanceDecisionItem-id"
result, err := graphClient.IdentityGovernance().AccessReviews().DecisionsById(&accessReviewInstanceDecisionItemId).GetWithRequestConfigurationAndResponseHandler(options, nil)


```
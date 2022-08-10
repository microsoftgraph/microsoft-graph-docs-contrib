---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.AccessReviewInstanceDecisionItemRequestBuilderGetQueryParameters{
	Expand: [] string {"instance($expand=definition)"},
}
configuration := &graphconfig.AccessReviewInstanceDecisionItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityGovernance().AccessReviews().DecisionsById("accessReviewInstanceDecisionItem-id").GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```
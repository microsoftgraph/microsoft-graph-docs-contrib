---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestTop := int32(100)
requestSkip := int32(0)

requestParameters := &graphconfig.IdentityGovernanceAccessReviewsDefinitionItemInstanceItemDecisionsRequestBuilderGetQueryParameters{
	Top: &requestTop,
	Skip: &requestSkip,
}
configuration := &graphconfig.IdentityGovernanceAccessReviewsDefinitionItemInstanceItemDecisionsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityGovernance().AccessReviews().DefinitionsById("accessReviewScheduleDefinition-id").InstancesById("accessReviewInstance-id").Decisions().Get(context.Background(), configuration)


```
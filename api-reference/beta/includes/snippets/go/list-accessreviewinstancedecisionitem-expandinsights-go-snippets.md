---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestParameters := &graphconfig.IdentityGovernanceAccessReviewsDefinitionItemInstanceItemDecisionsRequestBuilderGetQueryParameters{
	Expand: [] string {"insights"},
}
configuration := &graphconfig.IdentityGovernanceAccessReviewsDefinitionItemInstanceItemDecisionsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityGovernance().AccessReviews().DefinitionsById("accessReviewScheduleDefinition-id").InstancesById("accessReviewInstance-id").Decisions().Get(context.Background(), configuration)


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.DefinitionsRequestBuilderGetQueryParameters{
	Filter: "contains(scope/microsoft.graph.accessReviewQueryScope/query,%20'./members')",
}
options := &msgraphsdk.DefinitionsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}
result, err := graphClient.IdentityGovernance().AccessReviews().Definitions().GetWithRequestConfigurationAndResponseHandler(options, nil)


```
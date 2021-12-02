---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.DefinitionsRequestBuilderGetQueryParameters{
	Filter: "contains(scope/microsoft.graph.accessReviewQueryScope/query,%20'./members')",
}
options := &msgraphsdk.DefinitionsRequestBuilderGetOptions{
	Q: requestParameters,
}
result, err := graphClient.IdentityGovernance().AccessReviews().Definitions().Get(options)


```
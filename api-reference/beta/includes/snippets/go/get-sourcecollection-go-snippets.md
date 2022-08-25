---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.SourceCollectionRequestBuilderGetQueryParameters{
	Expand: [] string {"addToReviewSetOperation","custodianSources","lastEstimateStatisticsOperation"},
}
configuration := &graphconfig.SourceCollectionRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Compliance().Ediscovery().CasesById("case-id").SourceCollectionsById("sourceCollection-id").GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```
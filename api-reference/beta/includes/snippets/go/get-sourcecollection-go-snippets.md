---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.ComplianceEdiscoveryCaseItemSourceCollectionItemRequestBuilderGetQueryParameters{
	Expand: [] string {"addToReviewSetOperation","custodianSources","lastEstimateStatisticsOperation"},
}
configuration := &graphconfig.ComplianceEdiscoveryCaseItemSourceCollectionItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Compliance().Ediscovery().CasesById("case-id").SourceCollectionsById("sourceCollection-id").Get(context.Background(), configuration)


```
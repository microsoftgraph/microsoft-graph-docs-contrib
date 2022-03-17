---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.SourceCollectionRequestBuilderGetQueryParameters{
	Expand: "addToReviewSetOperation,custodianSources,lastEstimateStatisticsOperation",
}
options := &msgraphsdk.SourceCollectionRequestBuilderGetOptions{
	Q: requestParameters,
}
caseId := "case-id"
sourceCollectionId := "sourceCollection-id"
result, err := graphClient.Compliance().Ediscovery().CasesById(&caseId).SourceCollectionsById(&sourceCollectionId).Get(options)


```
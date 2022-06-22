---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.FilesRequestBuilderGetQueryParameters{
	Top: 5,
}
options := &msgraphsdk.FilesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}
ediscoveryCaseId := "ediscoveryCase-id"
ediscoveryReviewSetId := "ediscoveryReviewSet-id"
result, err := graphClient.Security().Cases().EdiscoveryCasesById(&ediscoveryCaseId).ReviewSetsById(&ediscoveryReviewSetId).Files().GetWithRequestConfigurationAndResponseHandler(options, nil)


```
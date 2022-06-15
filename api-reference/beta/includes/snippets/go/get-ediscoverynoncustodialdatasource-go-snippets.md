---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.EdiscoveryNoncustodialDataSourceRequestBuilderGetQueryParameters{
	Expand: "dataSource",
}
options := &msgraphsdk.EdiscoveryNoncustodialDataSourceRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}
ediscoveryCaseId := "ediscoveryCase-id"
ediscoveryNoncustodialDataSourceId := "ediscoveryNoncustodialDataSource-id"
result, err := graphClient.Security().Cases().EdiscoveryCasesById(&ediscoveryCaseId).NoncustodialDataSourcesById(&ediscoveryNoncustodialDataSourceId).GetWithRequestConfigurationAndResponseHandler(options, nil)


```
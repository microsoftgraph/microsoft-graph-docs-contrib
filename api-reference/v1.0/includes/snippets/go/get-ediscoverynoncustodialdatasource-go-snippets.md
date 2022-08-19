---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.EdiscoveryNoncustodialDataSourceRequestBuilderGetQueryParameters{
	Expand: [] string {"dataSource"},
}
configuration := &graphconfig.EdiscoveryNoncustodialDataSourceRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Security().Cases().EdiscoveryCasesById("ediscoveryCase-id").NoncustodialDataSourcesById("ediscoveryNoncustodialDataSource-id").GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```
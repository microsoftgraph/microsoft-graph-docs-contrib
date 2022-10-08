---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.NoncustodialDataSourcesRequestBuilderGetQueryParameters{
	Expand: [] string {"dataSource"},
}
configuration := &graphconfig.NoncustodialDataSourcesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Security().Cases().EdiscoveryCasesById("ediscoveryCase-id").NoncustodialDataSources().Get(context.Background(), configuration)


```
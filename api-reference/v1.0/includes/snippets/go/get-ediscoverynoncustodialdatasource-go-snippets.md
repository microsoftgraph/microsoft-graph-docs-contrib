---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestParameters := &graphconfig.SecurityCasesEdiscoveryCaseItemNoncustodialDataSourceItemRequestBuilderGetQueryParameters{
	Expand: [] string {"dataSource"},
}
configuration := &graphconfig.SecurityCasesEdiscoveryCaseItemNoncustodialDataSourceItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Security().Cases().EdiscoveryCasesById("ediscoveryCase-id").NoncustodialDataSourcesById("ediscoveryNoncustodialDataSource-id").Get(context.Background(), configuration)


```
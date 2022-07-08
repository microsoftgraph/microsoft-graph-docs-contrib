---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewEdiscoveryNoncustodialDataSource()
dataSource := msgraphsdk.NewDataSource()
requestBody.SetDataSource(dataSource)
dataSource.SetAdditionalData(map[string]interface{}{
	"@odata.type": "microsoft.graph.security.siteSource",
}
ediscoveryCaseId := "ediscoveryCase-id"
result, err := graphClient.Security().Cases().EdiscoveryCasesById(&ediscoveryCaseId).NoncustodialDataSources().Post(requestBody)


```
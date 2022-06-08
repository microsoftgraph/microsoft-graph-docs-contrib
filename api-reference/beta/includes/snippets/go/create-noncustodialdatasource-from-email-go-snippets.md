---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewNoncustodialDataSource()
applyHoldToSource := true
requestBody.SetApplyHoldToSource(&applyHoldToSource)
dataSource := msgraphsdk.NewDataSource()
requestBody.SetDataSource(dataSource)
dataSource.SetAdditionalData(map[string]interface{}{
	"@odata.type": "microsoft.graph.ediscovery.userSource",
	"email": "adelev@contoso.com",
}
caseId := "case-id"
result, err := graphClient.Compliance().Ediscovery().CasesById(&caseId).NoncustodialDataSources().Post(requestBody)


```
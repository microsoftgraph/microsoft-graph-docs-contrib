---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewNoncustodialDataSource()
applyHoldToSource := true
requestBody.SetApplyHoldToSource(&applyHoldToSource) 
dataSource := graphmodels.NewdataSource()
additionalData := map[string]interface{}{
	"email" : "adelev@contoso.com", 
}
dataSource.SetAdditionalData(additionalData)
requestBody.SetDataSource(dataSource)

result, err := graphClient.Compliance().Ediscovery().CasesById("case-id").NoncustodialDataSources().Post(requestBody)


```
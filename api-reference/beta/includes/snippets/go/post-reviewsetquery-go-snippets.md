---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewReviewSetQuery()
displayName := "My Query 1"
requestBody.SetDisplayName(&displayName)
query := "(subject:"Quarterly Financials")"
requestBody.SetQuery(&query)
options := &msgraphsdk.QueriesRequestBuilderPostOptions{
	Body: requestBody,
}
caseId := "case-id"
reviewSetId := "reviewSet-id"
result, err := graphClient.Compliance().Ediscovery().CasesById(&caseId).ReviewSetsById(&reviewSetId).Queries().Post(options)


```
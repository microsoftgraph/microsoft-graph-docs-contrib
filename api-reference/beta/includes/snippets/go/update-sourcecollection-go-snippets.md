---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewSourceCollection()
displayName := "Quarterly Financials search"
requestBody.SetDisplayName(&displayName)
options := &msgraphsdk.SourceCollectionRequestBuilderPatchOptions{
	Body: requestBody,
}
caseId := "case-id"
sourceCollectionId := "sourceCollection-id"
result, err := graphClient.Compliance().Ediscovery().CasesById(&caseId).SourceCollectionsById(&sourceCollectionId).Patch(options)


```
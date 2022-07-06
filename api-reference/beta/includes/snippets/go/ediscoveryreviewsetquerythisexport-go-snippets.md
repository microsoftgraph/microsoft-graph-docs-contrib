---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
outputName := "Export reviewset query via API"
requestBody.SetOutputName(&outputName)
description := "Export for the Contoso investigation 2"
requestBody.SetDescription(&description)
exportOptions := "originalFiles,fileInfo,tags"
requestBody.SetExportOptions(&exportOptions)
exportStructure := "directory"
requestBody.SetExportStructure(&exportStructure)
ediscoveryCaseId := "ediscoveryCase-id"
ediscoveryReviewSetId := "ediscoveryReviewSet-id"
ediscoveryReviewSetQueryId := "ediscoveryReviewSetQuery-id"
graphClient.Security().Cases().EdiscoveryCasesById(&ediscoveryCaseId).ReviewSetsById(&ediscoveryReviewSetId).QueriesById(&ediscoveryReviewSetQueryId).Export(ediscoveryCase-id, ediscoveryReviewSet-id, ediscoveryReviewSetQuery-id).Post(requestBody)


```
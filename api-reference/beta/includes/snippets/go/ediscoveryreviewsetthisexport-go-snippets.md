---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
outputName := "Export via API"
requestBody.SetOutputName(&outputName)
description := "Export for the Contoso investigation"
requestBody.SetDescription(&description)
exportOptions := "originalFiles,fileInfo,tags"
requestBody.SetExportOptions(&exportOptions)
exportStructure := "directory"
requestBody.SetExportStructure(&exportStructure)
ediscoveryCaseId := "ediscoveryCase-id"
ediscoveryReviewSetId := "ediscoveryReviewSet-id"
graphClient.Security().Cases().EdiscoveryCasesById(&ediscoveryCaseId).ReviewSetsById(&ediscoveryReviewSetId).Export(ediscoveryCase-id, ediscoveryReviewSet-id).Post(requestBody)


```
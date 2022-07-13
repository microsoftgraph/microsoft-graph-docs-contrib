---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewEdiscoveryCaseSettings()
redundancyDetection := msgraphsdk.NewRedundancyDetectionSettings()
requestBody.SetRedundancyDetection(redundancyDetection)
redundancyDetection.SetAdditionalData(map[string]interface{}{
	"@odata.type": "microsoft.graph.security.redundancyDetectionSettings",
}
topicModeling := msgraphsdk.NewTopicModelingSettings()
requestBody.SetTopicModeling(topicModeling)
topicModeling.SetAdditionalData(map[string]interface{}{
	"@odata.type": "microsoft.graph.security.topicModelingSettings",
}
ocr := msgraphsdk.NewOcrSettings()
requestBody.SetOcr(ocr)
ocr.SetAdditionalData(map[string]interface{}{
	"@odata.type": "microsoft.graph.security.ocrSettings",
}
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.security.ediscoveryCaseSettings",
}
ediscoveryCaseId := "ediscoveryCase-id"
graphClient.Security().Cases().EdiscoveryCasesById(&ediscoveryCaseId).Settings().Patch(requestBody)


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewEdiscoveryCaseSettings()
"@odata.type" := "#microsoft.graph.security.ediscoveryCaseSettings"
requestBody.Set"@odata.type"(&"@odata.type") 
redundancyDetection := graphmodels.NewRedundancyDetectionSettings()
"@odata.type" := "microsoft.graph.security.redundancyDetectionSettings"
redundancyDetection.Set"@odata.type"(&"@odata.type") 
requestBody.SetRedundancyDetection(redundancyDetection)
topicModeling := graphmodels.NewTopicModelingSettings()
"@odata.type" := "microsoft.graph.security.topicModelingSettings"
topicModeling.Set"@odata.type"(&"@odata.type") 
requestBody.SetTopicModeling(topicModeling)
ocr := graphmodels.NewOcrSettings()
"@odata.type" := "microsoft.graph.security.ocrSettings"
ocr.Set"@odata.type"(&"@odata.type") 
requestBody.SetOcr(ocr)

graphClient.Security().Cases().EdiscoveryCasesById("ediscoveryCase-id").Settings().Patch(requestBody)


```
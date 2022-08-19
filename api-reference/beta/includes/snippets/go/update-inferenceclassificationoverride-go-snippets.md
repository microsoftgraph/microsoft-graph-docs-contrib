---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewInferenceClassificationOverride()
classifyAs := graphmodels.FOCUSED_INFERENCECLASSIFICATIONTYPE 
requestBody.SetClassifyAs(&classifyAs) 

graphClient.Me().InferenceClassification().OverridesById("inferenceClassificationOverride-id").Patch(requestBody)


```
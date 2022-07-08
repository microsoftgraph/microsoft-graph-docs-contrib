---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewInferenceClassificationOverride()
classifyAs := "focused"
requestBody.SetClassifyAs(&classifyAs)
inferenceClassificationOverrideId := "inferenceClassificationOverride-id"
graphClient.Me().InferenceClassification().OverridesById(&inferenceClassificationOverrideId).Patch(requestBody)


```
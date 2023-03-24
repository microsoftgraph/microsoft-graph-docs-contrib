---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewInferenceClassificationOverride()
classifyAs := graphmodels.FOCUSED_INFERENCECLASSIFICATIONTYPE 
requestBody.SetClassifyAs(&classifyAs) 

result, err := graphClient.Me().InferenceClassification().OverridesById("inferenceClassificationOverride-id").Patch(context.Background(), requestBody, nil)


```
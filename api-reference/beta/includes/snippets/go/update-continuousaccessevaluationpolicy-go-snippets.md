---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewContinuousAccessEvaluationPolicy()
migrate := true
requestBody.SetMigrate(&migrate)
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.continuousAccessEvaluationPolicy",
}
options := &msgraphsdk.ContinuousAccessEvaluationPolicyRequestBuilderPatchOptions{
	Body: requestBody,
}
graphClient.Identity().ContinuousAccessEvaluationPolicy().Patch(options)


```
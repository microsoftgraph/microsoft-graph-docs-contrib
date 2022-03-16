---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewAuthorizationPolicy()
allowedToUseSSPR := true
requestBody.SetAllowedToUseSSPR(&allowedToUseSSPR)
options := &msgraphsdk.AuthorizationPolicyRequestBuilderPatchOptions{
	Body: requestBody,
}
graphClient.Policies().AuthorizationPolicy().Patch(options)


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewCrossTenantAccessPolicy()
displayName := "CrossTenantAccessPolicy"
requestBody.SetDisplayName(&displayName)
options := &msgraphsdk.CrossTenantAccessPolicyRequestBuilderPatchOptions{
	Body: requestBody,
}
graphClient.Policies().CrossTenantAccessPolicy().Patch(options)


```
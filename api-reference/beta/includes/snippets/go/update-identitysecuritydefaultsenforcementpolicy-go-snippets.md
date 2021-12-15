---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewIdentitySecurityDefaultsEnforcementPolicy()
isEnabled := false
requestBody.SetIsEnabled(&isEnabled)
options := &msgraphsdk.IdentitySecurityDefaultsEnforcementPolicyRequestBuilderPatchOptions{
	Body: requestBody,
}
graphClient.Policies().IdentitySecurityDefaultsEnforcementPolicy().Patch(options)


```
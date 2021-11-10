---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewAppManagementPolicy()
isEnabled := false
requestBody.SetIsEnabled(&isEnabled)
options := &msgraphsdk.AppManagementPolicyRequestBuilderPatchOptions{
	Body: requestBody,
}
appManagementPolicyId := "appManagementPolicy-id"
graphClient.Policies().AppManagementPoliciesById(&appManagementPolicyId).Patch(options);


```
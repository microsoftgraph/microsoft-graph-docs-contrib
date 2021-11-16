---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewEntitlementManagementSettings()
externalUserLifecycleAction := "None"
requestBody.SetExternalUserLifecycleAction(&externalUserLifecycleAction)
options := &msgraphsdk.SettingsRequestBuilderPatchOptions{
	Body: requestBody,
}
graphClient.IdentityGovernance().EntitlementManagement().Settings().Patch(options)


```
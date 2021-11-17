---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewAuthorizationPolicy()
defaultUserRolePermissions := msgraphsdk.NewDefaultUserRolePermissions()
requestBody.SetDefaultUserRolePermissions(defaultUserRolePermissions)
defaultUserRolePermissions.SetPermissionGrantPoliciesAssigned( []String {
	"managePermissionGrantsForSelf.microsoft-user-default-low",
}
options := &msgraphsdk.AuthorizationPolicyRequestBuilderPatchOptions{
	Body: requestBody,
}
graphClient.Policies().AuthorizationPolicy().Patch(options)


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAuthorizationPolicy()
defaultUserRolePermissions := graphmodels.NewDefaultUserRolePermissions()
permissionGrantPoliciesAssigned := []string {
	"managePermissionGrantsForSelf.microsoft-user-default-low",

}
defaultUserRolePermissions.SetPermissionGrantPoliciesAssigned(permissionGrantPoliciesAssigned)
requestBody.SetDefaultUserRolePermissions(defaultUserRolePermissions)

graphClient.Policies().AuthorizationPolicy().Patch(context.Background(), requestBody, nil)


```
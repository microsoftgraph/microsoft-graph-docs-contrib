---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewPermissionGrantPolicy()
displayName := "Custom permission grant policy"
requestBody.SetDisplayName(&displayName)
permissionGrantPolicyId := "permissionGrantPolicy-id"
graphClient.Policies().PermissionGrantPoliciesById(&permissionGrantPolicyId).Patch(requestBody)


```
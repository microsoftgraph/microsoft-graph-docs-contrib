---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewPermissionGrantPolicy()
displayName := "Custom permission grant policy"
requestBody.SetDisplayName(&displayName) 

result, err := graphClient.Policies().PermissionGrantPoliciesById("permissionGrantPolicy-id").Patch(context.Background(), requestBody, nil)


```
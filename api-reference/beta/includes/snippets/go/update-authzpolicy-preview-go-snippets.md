---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAuthorizationPolicy()
enabledPreviewFeatures := []String {
	"assignGroupsToRoles",

}
requestBody.SetEnabledPreviewFeatures(enabledPreviewFeatures)

graphClient.Policies().AuthorizationPolicyById("authorizationPolicy-id").Patch(requestBody)


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAuthorizationPolicy()
enabledPreviewFeatures := []string {
	"assignGroupsToRoles",

}
requestBody.SetEnabledPreviewFeatures(enabledPreviewFeatures)

result, err := graphClient.Policies().AuthorizationPolicyById("authorizationPolicy-id").Patch(context.Background(), requestBody, nil)


```
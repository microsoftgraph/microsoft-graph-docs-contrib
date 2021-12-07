---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewFeatureRolloutPolicy()
displayName := "PassthroughAuthentication rollout policy"
requestBody.SetDisplayName(&displayName)
description := "PassthroughAuthentication rollout policy"
requestBody.SetDescription(&description)
feature := "passthroughAuthentication"
requestBody.SetFeature(&feature)
isEnabled := true
requestBody.SetIsEnabled(&isEnabled)
isAppliedToOrganization := false
requestBody.SetIsAppliedToOrganization(&isAppliedToOrganization)
options := &msgraphsdk.FeatureRolloutPoliciesRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Policies().FeatureRolloutPolicies().Post(options)


```
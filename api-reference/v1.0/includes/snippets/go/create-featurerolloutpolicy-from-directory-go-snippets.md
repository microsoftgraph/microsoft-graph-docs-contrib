---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewFeatureRolloutPolicy()
displayName := "PassthroughAuthentication rollout policy"
requestBody.SetDisplayName(&displayName) 
description := "PassthroughAuthentication rollout policy"
requestBody.SetDescription(&description) 
feature := graphmodels.PASSTHROUGHAUTHENTICATION_STAGEDFEATURENAME 
requestBody.SetFeature(&feature) 
isEnabled := true
requestBody.SetIsEnabled(&isEnabled) 
isAppliedToOrganization := false
requestBody.SetIsAppliedToOrganization(&isAppliedToOrganization) 

result, err := graphClient.Policies().FeatureRolloutPolicies().Post(requestBody)


```
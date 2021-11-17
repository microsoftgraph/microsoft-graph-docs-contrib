---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestParameters := &msgraphsdk.FeatureRolloutPolicyRequestBuilderGetQueryParameters{
	Expand: "appliesTo",
}
options := &msgraphsdk.FeatureRolloutPolicyRequestBuilderGetOptions{
	Q: requestParameters,
}
featureRolloutPolicyId := "featureRolloutPolicy-id"
result, err := graphClient.Policies().FeatureRolloutPoliciesById(&featureRolloutPolicyId).Get(options)


```
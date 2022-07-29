---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.FeatureRolloutPolicyRequestBuilderGetQueryParameters{
	Expand: [] string {"appliesTo"},
}
configuration := &graphconfig.FeatureRolloutPolicyRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Policies().FeatureRolloutPoliciesById("featureRolloutPolicy-id").GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```
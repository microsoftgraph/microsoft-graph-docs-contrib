---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestParameters := &graphconfig.PoliciesFeatureRolloutPolicieItemRequestBuilderGetQueryParameters{
	Expand: [] string {"appliesTo"},
}
configuration := &graphconfig.PoliciesFeatureRolloutPolicieItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Policies().FeatureRolloutPoliciesById("featureRolloutPolicy-id").Get(context.Background(), configuration)


```
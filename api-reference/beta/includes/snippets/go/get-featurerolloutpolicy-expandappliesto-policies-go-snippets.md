---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphpolicies "github.com/microsoftgraph/msgraph-beta-sdk-go/policies"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphpolicies.PoliciesFeatureRolloutPolicieItemRequestBuilderGetQueryParameters{
	Expand: [] string {"appliesTo"},
}
configuration := &graphpolicies.PoliciesFeatureRolloutPolicieItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

featureRolloutPolicies, err := graphClient.Policies().FeatureRolloutPolicies().ByFeatureRolloutPolicyId("featureRolloutPolicy-id").Get(context.Background(), configuration)


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphpolicies "github.com/microsoftgraph/msgraph-sdk-go/policies"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphpolicies.PoliciesFeatureRolloutPolicieItemRequestBuilderGetQueryParameters{
	Expand: [] string {"appliesTo"},
}
configuration := &graphpolicies.PoliciesFeatureRolloutPolicieItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Policies().FeatureRolloutPolicies().ByFeatureRolloutPolicieId("featureRolloutPolicy-id").Get(context.Background(), configuration)


```
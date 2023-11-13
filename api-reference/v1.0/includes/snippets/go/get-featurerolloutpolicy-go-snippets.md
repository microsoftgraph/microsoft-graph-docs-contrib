---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



featureRolloutPolicies, err := graphClient.Policies().FeatureRolloutPolicies().ByFeatureRolloutPolicyId("featureRolloutPolicy-id").Get(context.Background(), nil)


```
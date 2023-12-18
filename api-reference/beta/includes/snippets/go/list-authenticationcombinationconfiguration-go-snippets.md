---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



combinationConfigurations, err := graphClient.Identity().ConditionalAccess().AuthenticationStrength().Policies().ByAuthenticationStrengthPolicyId("authenticationStrengthPolicy-id").CombinationConfigurations().Get(context.Background(), nil)


```
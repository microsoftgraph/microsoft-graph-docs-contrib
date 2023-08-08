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



usage(), err := graphClient.Policies().AuthenticationStrengthPolicies().ByAuthenticationStrengthPolicyId("authenticationStrengthPolicy-id").Usage().Get(context.Background(), nil)


```
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



claimsMappingPolicies, err := graphClient.Policies().ClaimsMappingPolicies().ByClaimsMappingPolicyId("claimsMappingPolicy-id").Get(context.Background(), nil)


```
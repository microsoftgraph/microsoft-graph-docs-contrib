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



appliesTo, err := graphClient.Policies().TokenIssuancePolicies().ByTokenIssuancePolicyId("tokenIssuancePolicy-id").AppliesTo().Get(context.Background(), nil)


```
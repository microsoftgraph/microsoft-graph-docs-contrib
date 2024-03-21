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



tokenLifetimePolicies, err := graphClient.Policies().TokenLifetimePolicies().ByTokenLifetimePolicyId("tokenLifetimePolicy-id").Get(context.Background(), nil)


```
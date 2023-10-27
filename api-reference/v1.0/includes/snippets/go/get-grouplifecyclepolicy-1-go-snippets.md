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



groupLifecyclePolicies, err := graphClient.GroupLifecyclePolicies().ByGroupLifecyclePolicyId("groupLifecyclePolicy-id").Get(context.Background(), nil)


```
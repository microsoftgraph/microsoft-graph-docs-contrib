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



groupLifecyclePolicies, err := graphClient.Groups().ByGroupId("group-id").GroupLifecyclePolicies().Get(context.Background(), nil)


```
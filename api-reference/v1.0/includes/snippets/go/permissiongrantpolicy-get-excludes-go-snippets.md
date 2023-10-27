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



excludes, err := graphClient.Policies().PermissionGrantPolicies().ByPermissionGrantPolicyId("permissionGrantPolicy-id").Excludes().Get(context.Background(), nil)


```
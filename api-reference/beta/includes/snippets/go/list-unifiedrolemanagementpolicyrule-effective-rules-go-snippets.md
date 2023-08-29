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



effectiveRules, err := graphClient.Policies().RoleManagementPolicies().ByUnifiedRoleManagementPolicyId("unifiedRoleManagementPolicy-id").EffectiveRules().Get(context.Background(), nil)


```
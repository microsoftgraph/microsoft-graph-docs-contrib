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



roleManagementPolicyAssignments, err := graphClient.Policies().RoleManagementPolicyAssignments().ByUnifiedRoleManagementPolicyAssignmentId("unifiedRoleManagementPolicyAssignment-id").Get(context.Background(), nil)


```
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



roleAssignmentScheduleRequests, err := graphClient.RoleManagement().Directory().RoleAssignmentScheduleRequests().ByUnifiedRoleAssignmentScheduleRequestId("unifiedRoleAssignmentScheduleRequest-id").Get(context.Background(), nil)


```
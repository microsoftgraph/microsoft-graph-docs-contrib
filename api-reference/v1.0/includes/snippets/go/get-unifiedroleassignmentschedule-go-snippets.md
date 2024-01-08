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



roleAssignmentSchedules, err := graphClient.RoleManagement().Directory().RoleAssignmentSchedules().ByUnifiedRoleAssignmentScheduleId("unifiedRoleAssignmentSchedule-id").Get(context.Background(), nil)


```
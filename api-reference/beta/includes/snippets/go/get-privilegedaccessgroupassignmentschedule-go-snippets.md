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



assignmentSchedules, err := graphClient.IdentityGovernance().PrivilegedAccess().Group().AssignmentSchedules().ByPrivilegedAccessGroupAssignmentScheduleId("privilegedAccessGroupAssignmentSchedule-id").Get(context.Background(), nil)


```
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



assignmentScheduleInstances, err := graphClient.IdentityGovernance().PrivilegedAccess().Group().AssignmentScheduleInstances().ByPrivilegedAccessGroupAssignmentScheduleInstanceId("privilegedAccessGroupAssignmentScheduleInstance-id").Get(context.Background(), nil)


```
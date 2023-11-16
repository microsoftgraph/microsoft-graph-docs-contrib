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



assignmentScheduleRequests, err := graphClient.IdentityGovernance().PrivilegedAccess().Group().AssignmentScheduleRequests().ByPrivilegedAccessGroupAssignmentScheduleRequestId("privilegedAccessGroupAssignmentScheduleRequest-id").Get(context.Background(), nil)


```
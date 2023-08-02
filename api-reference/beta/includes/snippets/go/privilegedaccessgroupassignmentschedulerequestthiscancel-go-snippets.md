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



graphClient.IdentityGovernance().PrivilegedAccess().Group().AssignmentScheduleRequests().ByAssignmentScheduleRequestId("privilegedAccessGroupAssignmentScheduleRequest-id").Cancel().Post(context.Background(), nil)


```
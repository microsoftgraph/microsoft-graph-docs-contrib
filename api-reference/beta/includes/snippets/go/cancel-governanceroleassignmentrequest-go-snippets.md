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



graphClient.PrivilegedAccess().ByPrivilegedAccessId("privilegedAccess-id").RoleAssignmentRequests().ByGovernanceRoleAssignmentRequestId("governanceRoleAssignmentRequest-id").Cancel().Post(context.Background(), nil)


```
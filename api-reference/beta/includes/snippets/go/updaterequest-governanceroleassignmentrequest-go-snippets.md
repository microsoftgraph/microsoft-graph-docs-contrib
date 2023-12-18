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



updateRequest, err := graphClient.PrivilegedAccess().ByPrivilegedAccessId("privilegedAccess-id").RoleAssignmentRequests().ByGovernanceRoleAssignmentRequestId("governanceRoleAssignmentRequest-id").UpdateRequest().Post(context.Background(), nil)


```
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



result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageAssignmentApprovals().ByAccessPackageAssignmentApprovalId("approval-id").Get(context.Background(), nil)


```
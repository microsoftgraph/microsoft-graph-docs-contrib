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



steps, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageAssignmentApprovals().ByApprovalId("approval-id").Steps().ByApprovalStepId("approvalStep-id").Get(context.Background(), nil)


```
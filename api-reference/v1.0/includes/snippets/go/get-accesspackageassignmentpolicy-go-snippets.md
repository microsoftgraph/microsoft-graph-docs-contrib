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



assignmentPolicies, err := graphClient.IdentityGovernance().EntitlementManagement().AssignmentPolicies().ByAccessPackageAssignmentPolicyId("accessPackageAssignmentPolicy-id").Get(context.Background(), nil)


```
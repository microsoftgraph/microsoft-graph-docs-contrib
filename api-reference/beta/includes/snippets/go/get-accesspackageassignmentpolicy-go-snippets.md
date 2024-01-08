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



accessPackageAssignmentPolicies, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageAssignmentPolicies().ByAccessPackageAssignmentPolicyId("accessPackageAssignmentPolicy-id").Get(context.Background(), nil)


```
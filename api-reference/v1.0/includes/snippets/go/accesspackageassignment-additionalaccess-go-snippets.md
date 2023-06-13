---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphidentitygovernance "github.com/microsoftgraph/msgraph-sdk-go/identitygovernance"
	  //other-imports
)

graphClient, err := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphidentitygovernance.IdentityGovernanceEntitlementManagementAssignmentItemRequestBuilderGetQueryParameters{
	Expand: [] string {"target"},
}
configuration := &graphidentitygovernance.IdentityGovernanceEntitlementManagementAssignmentItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityGovernance().EntitlementManagement().Assignments().ByAssignmentId("accessPackageAssignment-id").Get(context.Background(), configuration)


```
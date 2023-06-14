---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphidentitygovernance "github.com/microsoftgraph/msgraph-beta-sdk-go/identitygovernance"
	  //other-imports
)

graphClient, err := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphidentitygovernance.IdentityGovernanceEntitlementManagementAccessPackageAssignmentItemRequestBuilderGetQueryParameters{
	Expand: [] string {"target"},
}
configuration := &graphidentitygovernance.IdentityGovernanceEntitlementManagementAccessPackageAssignmentItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageAssignments().ByAccessPackageAssignmentId("accessPackageAssignment-id").Get(context.Background(), configuration)


```
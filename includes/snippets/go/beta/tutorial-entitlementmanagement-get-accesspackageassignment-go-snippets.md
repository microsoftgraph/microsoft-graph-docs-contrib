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

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "accessPackageAssignmentPolicy/Id eq 'db440482-1210-4a60-9b55-3ac7a72f63ba'"

requestParameters := &graphidentitygovernance.IdentityGovernanceEntitlementManagementAccessPackageAssignmentsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Expand: [] string {"target","accessPackageAssignmentResourceRoles"},
}
configuration := &graphidentitygovernance.IdentityGovernanceEntitlementManagementAccessPackageAssignmentsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

accessPackageAssignments, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageAssignments().Get(context.Background(), configuration)


```
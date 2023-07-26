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



requestFilter := "(requestState eq 'PendingApproval')"

requestParameters := &graphidentitygovernance.IdentityGovernanceEntitlementManagementAccessPackageAssignmentRequestsRequestBuilderGetQueryParameters{
	Expand: [] string {"requestor($expand=connectedOrganization)"},
	Filter: &requestFilter,
}
configuration := &graphidentitygovernance.IdentityGovernanceEntitlementManagementAccessPackageAssignmentRequestsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageAssignmentRequests().Get(context.Background(), configuration)


```
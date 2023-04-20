---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-beta-sdk-go/identitygovernance"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "(requestState eq 'PendingApproval')"

requestParameters := &graphconfig.IdentityGovernanceEntitlementManagementAccessPackageAssignmentRequestsRequestBuilderGetQueryParameters{
	Expand: [] string {"requestor($expand=connectedOrganization)"},
	Filter: &requestFilter,
}
configuration := &graphconfig.IdentityGovernanceEntitlementManagementAccessPackageAssignmentRequestsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageAssignmentRequests().Get(context.Background(), configuration)


```
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

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "originSystem eq 'SharePointOnline'"

requestParameters := &graphidentitygovernance.IdentityGovernanceEntitlementManagementResourceEnvironmentsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphidentitygovernance.IdentityGovernanceEntitlementManagementResourceEnvironmentsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

resourceEnvironments, err := graphClient.IdentityGovernance().EntitlementManagement().ResourceEnvironments().Get(context.Background(), configuration)


```
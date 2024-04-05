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



requestFilter := "(displayName eq 'General')"

requestParameters := &graphidentitygovernance.IdentityGovernanceEntitlementManagementCatalogsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphidentitygovernance.IdentityGovernanceEntitlementManagementCatalogsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

catalogs, err := graphClient.IdentityGovernance().EntitlementManagement().Catalogs().Get(context.Background(), configuration)


```
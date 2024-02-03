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



requestFilter := "(originSystem eq 'SharePointOnline' and resource/id eq 'dcc3f966-a73c-48e2-8c1d-bcac775488c3')"

requestParameters := &graphidentitygovernance.IdentityGovernanceEntitlementManagementCatalogItemResourceRolesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Expand: [] string {"resource"},
}
configuration := &graphidentitygovernance.IdentityGovernanceEntitlementManagementCatalogItemResourceRolesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

resourceRoles, err := graphClient.IdentityGovernance().EntitlementManagement().Catalogs().ByAccessPackageCatalogId("accessPackageCatalog-id").ResourceRoles().Get(context.Background(), configuration)


```
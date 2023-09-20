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



requestFilter := "(originSystem eq 'SharePointOnline' and accessPackageResource/id eq '53c71803-a0a8-4777-aecc-075de8ee3991')"

requestParameters := &graphidentitygovernance.IdentityGovernanceEntitlementManagementAccessPackageCatalogItemAccessPackageResourceRolesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Select: [] string {"displayName","originId"},
}
configuration := &graphidentitygovernance.IdentityGovernanceEntitlementManagementAccessPackageCatalogItemAccessPackageResourceRolesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

accessPackageResourceRoles, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageCatalogs().ByAccessPackageCatalogId("accessPackageCatalog-id").AccessPackageResourceRoles().Get(context.Background(), configuration)


```
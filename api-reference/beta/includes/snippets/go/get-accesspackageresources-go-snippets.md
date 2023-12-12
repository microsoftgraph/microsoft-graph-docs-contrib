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



requestFilter := "resourceType eq 'Application'"

requestParameters := &graphidentitygovernance.IdentityGovernanceEntitlementManagementAccessPackageCatalogItemAccessPackageResourcesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Expand: [] string {"accessPackageResourceScopes"},
}
configuration := &graphidentitygovernance.IdentityGovernanceEntitlementManagementAccessPackageCatalogItemAccessPackageResourcesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

accessPackageResources, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageCatalogs().ByAccessPackageCatalogId("accessPackageCatalog-id").AccessPackageResources().Get(context.Background(), configuration)


```
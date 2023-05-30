---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-beta-sdk-go/identitygovernance"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "resourceType eq 'Application'"

requestParameters := &graphconfig.IdentityGovernanceEntitlementManagementAccessPackageCatalogItemAccessPackageResourcesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Expand: [] string {"accessPackageResourceScopes"},
}
configuration := &graphconfig.IdentityGovernanceEntitlementManagementAccessPackageCatalogItemAccessPackageResourcesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageCatalogs().ByAccessPackageCatalogId("accessPackageCatalog-id").AccessPackageResources().Get(context.Background(), configuration)


```
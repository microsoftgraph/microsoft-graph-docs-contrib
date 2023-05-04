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



requestFilter := "(originSystem eq 'SharePointOnline' and accessPackageResource/id eq '53c71803-a0a8-4777-aecc-075de8ee3991')"

requestParameters := &graphconfig.IdentityGovernanceEntitlementManagementAccessPackageCatalogItemAccessPackageResourceRolesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Select: [] string {"displayName","originId"},
}
configuration := &graphconfig.IdentityGovernanceEntitlementManagementAccessPackageCatalogItemAccessPackageResourceRolesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageCatalogs().ByAccessPackageCatalogId("accessPackageCatalog-id").AccessPackageResourceRoles().Get(context.Background(), configuration)


```
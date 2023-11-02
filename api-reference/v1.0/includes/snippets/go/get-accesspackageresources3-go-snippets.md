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



requestFilter := "originId eq '0282e19d-bf41-435d-92a4-99bab93af305'"

requestParameters := &graphidentitygovernance.IdentityGovernanceEntitlementManagementCatalogItemResourcesRequestBuilderGetQueryParameters{
	Expand: [] string {"roles","scopes"},
	Filter: &requestFilter,
}
configuration := &graphidentitygovernance.IdentityGovernanceEntitlementManagementCatalogItemResourcesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

resources, err := graphClient.IdentityGovernance().EntitlementManagement().Catalogs().ByAccessPackageCatalogId("accessPackageCatalog-id").Resources().Get(context.Background(), configuration)


```
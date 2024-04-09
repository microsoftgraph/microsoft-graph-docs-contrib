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



requestFilter := "originId eq 'e93e24d1-2b65-4a6c-a1dd-654a12225487'"

requestParameters := &graphidentitygovernance.IdentityGovernanceEntitlementManagementCatalogItemResourcesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphidentitygovernance.IdentityGovernanceEntitlementManagementCatalogItemResourcesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

resources, err := graphClient.IdentityGovernance().EntitlementManagement().Catalogs().ByAccessPackageCatalogId("accessPackageCatalog-id").Resources().Get(context.Background(), configuration)


```
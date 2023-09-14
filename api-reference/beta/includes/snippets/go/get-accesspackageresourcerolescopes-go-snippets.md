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


requestParameters := &graphidentitygovernance.IdentityGovernanceEntitlementManagementAccessPackageItemRequestBuilderGetQueryParameters{
	Expand: [] string {"accessPackageResourceRoleScopes($expand=accessPackageResourceRole,accessPackageResourceScope)"},
}
configuration := &graphidentitygovernance.IdentityGovernanceEntitlementManagementAccessPackageItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

accessPackages, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackages().ByAccessPackageId("accessPackage-id").Get(context.Background(), configuration)


```
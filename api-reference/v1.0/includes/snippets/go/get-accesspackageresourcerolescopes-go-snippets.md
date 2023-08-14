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


requestParameters := &graphidentitygovernance.IdentityGovernanceEntitlementManagementAccessPackageItemRequestBuilderGetQueryParameters{
	Expand: [] string {"resourceRoleScopes($expand=role,scope)"},
}
configuration := &graphidentitygovernance.IdentityGovernanceEntitlementManagementAccessPackageItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

accessPackages, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackages().ByAccessPackageId("accessPackage-id").Get(context.Background(), configuration)


```
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


requestParameters := &graphidentitygovernance.IdentityGovernanceEntitlementManagementAccessPackageAssignmentsAdditionalAccess(accessPackageId='{accessPackageId}',incompatibleAccessPackageId='{incompatibleAccessPackageId}')RequestBuilderGetQueryParameters{
	Expand: [] string {"target"},
}
configuration := &graphidentitygovernance.IdentityGovernanceEntitlementManagementAccessPackageAssignmentsAdditionalAccess(accessPackageId='{accessPackageId}',incompatibleAccessPackageId='{incompatibleAccessPackageId}')RequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

additionalAccess(accessPackageId='{accessPackageId}',incompatibleAccessPackageId='{incompatibleAccessPackageId}'), err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageAssignments().AdditionalAccess(accessPackageId='{accessPackageId}',incompatibleAccessPackageId='{incompatibleAccessPackageId}')().Get(context.Background(), configuration)


```
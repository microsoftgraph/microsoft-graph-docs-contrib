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


requestParameters := &graphidentitygovernance.IdentityGovernanceEntitlementManagementAccessPackageAssignmentPolicieItemRequestBuilderGetQueryParameters{
	Expand: [] string {"customExtensionHandlers($expand=customExtension)"},
}
configuration := &graphidentitygovernance.IdentityGovernanceEntitlementManagementAccessPackageAssignmentPolicieItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

accessPackageAssignmentPolicies, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageAssignmentPolicies().ByAccessPackageAssignmentPolicyId("accessPackageAssignmentPolicy-id").Get(context.Background(), configuration)


```
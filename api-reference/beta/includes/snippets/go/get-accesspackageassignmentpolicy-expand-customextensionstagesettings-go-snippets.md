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


requestParameters := &graphconfig.IdentityGovernanceEntitlementManagementAccessPackageAssignmentPolicieItemRequestBuilderGetQueryParameters{
	Expand: [] string {"customExtensionStageSettings($expand=customExtension)"},
}
configuration := &graphconfig.IdentityGovernanceEntitlementManagementAccessPackageAssignmentPolicieItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageAssignmentPolicies().ByAccessPackageAssignmentPolicieId("accessPackageAssignmentPolicy-id").Get(context.Background(), configuration)


```
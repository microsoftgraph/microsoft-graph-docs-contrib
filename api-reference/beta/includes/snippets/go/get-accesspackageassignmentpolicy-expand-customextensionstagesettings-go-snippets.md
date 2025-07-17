---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphidentitygovernance "github.com/microsoftgraph/msgraph-beta-sdk-go/identitygovernance"
	  //other-imports
)

requestParameters := &graphidentitygovernance.EntitlementManagementAccessPackageAssignmentPoliciesItemRequestBuilderGetQueryParameters{
	Expand: [] string {"customExtensionStageSettings($expand=customExtension)"},
}
configuration := &graphidentitygovernance.EntitlementManagementAccessPackageAssignmentPoliciesItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
accessPackageAssignmentPolicies, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageAssignmentPolicies().ByAccessPackageAssignmentPolicyId("accessPackageAssignmentPolicy-id").Get(context.Background(), configuration)


```
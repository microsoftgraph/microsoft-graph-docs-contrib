---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphidentitygovernance "github.com/microsoftgraph/msgraph-sdk-go/identitygovernance"
	  //other-imports
)

requestParameters := &graphidentitygovernance.EntitlementManagementAssignmentPoliciesItemRequestBuilderGetQueryParameters{
	Expand: [] string {"customExtensionStageSettings($expand=customExtension)"},
}
configuration := &graphidentitygovernance.EntitlementManagementAssignmentPoliciesItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
assignmentPolicies, err := graphClient.IdentityGovernance().EntitlementManagement().AssignmentPolicies().ByAccessPackageAssignmentPolicyId("accessPackageAssignmentPolicy-id").Get(context.Background(), configuration)


```
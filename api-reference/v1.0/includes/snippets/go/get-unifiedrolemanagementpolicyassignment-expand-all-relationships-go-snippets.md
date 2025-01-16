---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphpolicies "github.com/microsoftgraph/msgraph-sdk-go/policies"
	  //other-imports
)

requestParameters := &graphpolicies.RoleManagementPolicyAssignmentsItemRequestBuilderGetQueryParameters{
	Expand: [] string {"policy($expand=rules)"},
}
configuration := &graphpolicies.RoleManagementPolicyAssignmentsItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
roleManagementPolicyAssignments, err := graphClient.Policies().RoleManagementPolicyAssignments().ByUnifiedRoleManagementPolicyAssignmentId("unifiedRoleManagementPolicyAssignment-id").Get(context.Background(), configuration)


```
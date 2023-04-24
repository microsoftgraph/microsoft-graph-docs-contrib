---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-sdk-go/policies"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphconfig.PoliciesRoleManagementPolicyAssignmentItemRequestBuilderGetQueryParameters{
	Expand: [] string {"policy($expand=rules)"},
}
configuration := &graphconfig.PoliciesRoleManagementPolicyAssignmentItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Policies().RoleManagementPolicyAssignments().ByRoleManagementPolicyAssignmentId("unifiedRoleManagementPolicyAssignment-id").Get(context.Background(), configuration)


```
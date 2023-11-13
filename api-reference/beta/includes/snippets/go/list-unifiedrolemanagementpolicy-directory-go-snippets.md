---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphpolicies "github.com/microsoftgraph/msgraph-beta-sdk-go/policies"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "scopeId eq '/' and scopeType eq 'DirectoryRole'"

requestParameters := &graphpolicies.PoliciesRoleManagementPoliciesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphpolicies.PoliciesRoleManagementPoliciesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

roleManagementPolicies, err := graphClient.Policies().RoleManagementPolicies().Get(context.Background(), configuration)


```
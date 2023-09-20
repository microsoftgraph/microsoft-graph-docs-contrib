---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphpolicies "github.com/microsoftgraph/msgraph-sdk-go/policies"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "scopeId eq '/' and scopeType eq 'Directory'"

requestParameters := &graphpolicies.PoliciesRoleManagementPoliciesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Expand: [] string {"rules"},
}
configuration := &graphpolicies.PoliciesRoleManagementPoliciesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

roleManagementPolicies, err := graphClient.Policies().RoleManagementPolicies().Get(context.Background(), configuration)


```
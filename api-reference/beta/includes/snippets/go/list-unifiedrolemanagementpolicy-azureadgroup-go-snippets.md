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



requestFilter := "scopeId eq '60bba733-f09d-49b7-8445-32369aa066b3' and scopeType eq 'Group'"

requestParameters := &graphpolicies.PoliciesRoleManagementPoliciesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Expand: [] string {"rules($select=id)"},
}
configuration := &graphpolicies.PoliciesRoleManagementPoliciesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

roleManagementPolicies, err := graphClient.Policies().RoleManagementPolicies().Get(context.Background(), configuration)


```
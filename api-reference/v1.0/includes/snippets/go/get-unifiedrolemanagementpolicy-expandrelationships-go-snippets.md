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


requestParameters := &graphpolicies.PoliciesRoleManagementPolicieItemRequestBuilderGetQueryParameters{
	Expand: [] string {"effectiveRules","rules"},
}
configuration := &graphpolicies.PoliciesRoleManagementPolicieItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Policies().RoleManagementPolicies().ByRoleManagementPolicieId("unifiedRoleManagementPolicy-id").Get(context.Background(), configuration)


```
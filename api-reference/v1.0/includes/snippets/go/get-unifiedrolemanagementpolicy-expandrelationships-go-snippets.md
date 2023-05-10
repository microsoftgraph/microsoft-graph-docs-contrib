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


requestParameters := &graphconfig.PoliciesRoleManagementPolicieItemRequestBuilderGetQueryParameters{
	Expand: [] string {"effectiveRules","rules"},
}
configuration := &graphconfig.PoliciesRoleManagementPolicieItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Policies().RoleManagementPolicies().ByRoleManagementPolicieId("unifiedRoleManagementPolicy-id").Get(context.Background(), configuration)


```
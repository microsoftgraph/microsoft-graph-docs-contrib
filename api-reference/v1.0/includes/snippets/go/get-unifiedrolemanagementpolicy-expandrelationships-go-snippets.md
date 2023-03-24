---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestParameters := &graphconfig.PoliciesRoleManagementPolicieItemRequestBuilderGetQueryParameters{
	Expand: [] string {"effectiveRules","rules"},
}
configuration := &graphconfig.PoliciesRoleManagementPolicieItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Policies().RoleManagementPoliciesById("unifiedRoleManagementPolicy-id").Get(context.Background(), configuration)


```
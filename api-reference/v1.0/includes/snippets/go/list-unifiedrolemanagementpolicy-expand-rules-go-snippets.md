---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestFilter := "scopeId eq '/' and scopeType eq 'Directory'"

requestParameters := &graphconfig.PoliciesRoleManagementPoliciesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Expand: [] string {"rules"},
}
configuration := &graphconfig.PoliciesRoleManagementPoliciesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Policies().RoleManagementPolicies().Get(context.Background(), configuration)


```
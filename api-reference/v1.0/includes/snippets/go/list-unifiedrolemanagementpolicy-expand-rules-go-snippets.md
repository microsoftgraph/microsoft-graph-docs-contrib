---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.RoleManagementPoliciesRequestBuilderGetQueryParameters{
	Filter: "scopeId eq '/' and scopeType eq 'Directory'",
	Expand: [] string {"rules"},
}
configuration := &graphconfig.RoleManagementPoliciesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Policies().RoleManagementPolicies().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.RoleManagementPoliciesRequestBuilderGetQueryParameters{
	Filter: "scopeId%20eq%20'/'%20and%20scopeType%20eq%20'Directory'",
	Expand: "rules",
}
options := &msgraphsdk.RoleManagementPoliciesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}
result, err := graphClient.Policies().RoleManagementPolicies().GetWithRequestConfigurationAndResponseHandler(options, nil)


```
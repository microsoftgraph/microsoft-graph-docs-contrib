---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.RoleManagementPoliciesRequestBuilderGetQueryParameters{
	Filter: "scopeId%20eq%20'/'%20and%20scopeType%20eq%20'DirectoryRole'",
}
options := &msgraphsdk.RoleManagementPoliciesRequestBuilderGetOptions{
	Q: requestParameters,
}
result, err := graphClient.Policies().RoleManagementPolicies().Get(options)


```
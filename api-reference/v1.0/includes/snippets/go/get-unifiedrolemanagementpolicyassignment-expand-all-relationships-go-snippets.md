---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.UnifiedRoleManagementPolicyAssignmentRequestBuilderGetQueryParameters{
	Expand: [] string {"policy($expand=rules)"},
}
configuration := &graphconfig.UnifiedRoleManagementPolicyAssignmentRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Policies().RoleManagementPolicyAssignmentsById("unifiedRoleManagementPolicyAssignment-id").GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```
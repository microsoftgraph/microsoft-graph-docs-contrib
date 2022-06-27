---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.RoleManagementPolicyAssignmentsRequestBuilderGetQueryParameters{
	Filter: "scopeId%20eq%20'/'%20and%20scopeType%20eq%20'DirectoryRole'%20and%20roleDefinitionId%20eq%20'62e90394-69f5-4237-9190-012177145e10'",
	Expand: "policy($expand=rules)",
}
options := &msgraphsdk.RoleManagementPolicyAssignmentsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}
result, err := graphClient.Policies().RoleManagementPolicyAssignments().GetWithRequestConfigurationAndResponseHandler(options, nil)


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.UnifiedRoleAssignmentMultipleRequestBuilderGetQueryParameters{
	Expand: "roleDefinition",
}
options := &msgraphsdk.UnifiedRoleAssignmentMultipleRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}
unifiedRoleAssignmentMultipleId := "unifiedRoleAssignmentMultiple-id"
result, err := graphClient.RoleManagement().CloudPC().RoleAssignmentsById(&unifiedRoleAssignmentMultipleId).GetWithRequestConfigurationAndResponseHandler(options, nil)


```
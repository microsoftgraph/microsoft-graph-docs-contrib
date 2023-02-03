---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.RoleManagementDirectoryRoleAssignmentItemRequestBuilderGetQueryParameters{
	Expand: [] string {"roleDefinition"},
}
configuration := &graphconfig.RoleManagementDirectoryRoleAssignmentItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.RoleManagement().Directory().RoleAssignmentsById("unifiedRoleAssignment-id").Get(context.Background(), configuration)


```
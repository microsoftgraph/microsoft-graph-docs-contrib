---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.RoleManagementDirectoryRoleDefinitionItemRequestBuilderGetQueryParameters{
	Expand: [] string {"inheritsPermissionsFrom"},
}
configuration := &graphconfig.RoleManagementDirectoryRoleDefinitionItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.RoleManagement().Directory().RoleDefinitionsById("unifiedRoleDefinition-id").Get(context.Background(), configuration)


```
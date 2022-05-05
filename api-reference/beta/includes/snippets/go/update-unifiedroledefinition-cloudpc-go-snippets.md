---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewUnifiedRoleDefinition()
description := "Update basic properties and permission of application registrations"
requestBody.SetDescription(&description)
displayName := "ExampleCustomRole"
requestBody.SetDisplayName(&displayName)
requestBody.SetRolePermissions( []UnifiedRolePermission {
	msgraphsdk.NewUnifiedRolePermission(),
	SetAdditionalData(map[string]interface{}{
		"allowedResourceActions":  []String {
			"Microsoft.CloudPC/CloudPCs/Read",
			"Microsoft.CloudPC/CloudPCs/Reprovision",
		}
	}
}
options := &msgraphsdk.UnifiedRoleDefinitionRequestBuilderPatchOptions{
	Body: requestBody,
}
unifiedRoleDefinitionId := "unifiedRoleDefinition-id"
graphClient.RoleManagement().CloudPC().RoleDefinitionsById(&unifiedRoleDefinitionId).Patch(options)


```
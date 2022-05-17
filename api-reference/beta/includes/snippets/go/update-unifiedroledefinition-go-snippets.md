---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewUnifiedRoleDefinition()
description := "Update basic properties of application registrations"
requestBody.SetDescription(&description)
displayName := "Application Registration Support Administrator"
requestBody.SetDisplayName(&displayName)
requestBody.SetRolePermissions( []UnifiedRolePermission {
	msgraphsdk.NewUnifiedRolePermission(),
	SetAdditionalData(map[string]interface{}{
		"allowedResourceActions":  []String {
			"microsoft.directory/applications/basic/read",
		}
	}
}
unifiedRoleDefinitionId := "unifiedRoleDefinition-id"
graphClient.RoleManagement().Directory().RoleDefinitionsById(&unifiedRoleDefinitionId).Patch(requestBody)


```
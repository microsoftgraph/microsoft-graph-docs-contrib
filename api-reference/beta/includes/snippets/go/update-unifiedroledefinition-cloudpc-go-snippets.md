---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewUnifiedRoleDefinition()
description := "Update basic properties and permission of application registrations"
requestBody.SetDescription(&description) 
displayName := "ExampleCustomRole"
requestBody.SetDisplayName(&displayName) 


unifiedRolePermission := graphmodels.NewUnifiedRolePermission()
additionalData := map[string]interface{}{
	allowedResourceActions := []string {
		"Microsoft.CloudPC/CloudPCs/Read",
		"Microsoft.CloudPC/CloudPCs/Reprovision",

	}
}
unifiedRolePermission.SetAdditionalData(additionalData)

rolePermissions := []graphmodels.UnifiedRolePermissionable {
	unifiedRolePermission,

}
requestBody.SetRolePermissions(rolePermissions)

graphClient.RoleManagement().CloudPC().RoleDefinitionsById("unifiedRoleDefinition-id").Patch(requestBody)


```
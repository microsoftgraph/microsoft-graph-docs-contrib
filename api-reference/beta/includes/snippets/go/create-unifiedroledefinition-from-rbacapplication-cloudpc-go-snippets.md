---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewUnifiedRoleDefinition()
description := "An example custom role"
requestBody.SetDescription(&description) 
displayName := "ExampleCustomRole"
requestBody.SetDisplayName(&displayName) 


unifiedRolePermission := graphmodels.NewUnifiedRolePermission()
additionalData := map[string]interface{}{
	allowedResourceActions := []string {
		"Microsoft.CloudPC/CloudPCs/Read",

	}
}
unifiedRolePermission.SetAdditionalData(additionalData)

rolePermissions := []graphmodels.UnifiedRolePermissionable {
	unifiedRolePermission,

}
requestBody.SetRolePermissions(rolePermissions)
additionalData := map[string]interface{}{
	"condition" : "null", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.RoleManagement().CloudPC().RoleDefinitions().Post(requestBody)


```
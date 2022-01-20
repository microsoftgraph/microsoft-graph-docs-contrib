---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewUnifiedRoleDefinition()
description := "An example custom role"
requestBody.SetDescription(&description)
displayName := "ExampleCustomRole"
requestBody.SetDisplayName(&displayName)
requestBody.SetRolePermissions( []UnifiedRolePermission {
	msgraphsdk.NewUnifiedRolePermission(),
	SetAdditionalData(map[string]interface{}{
		"allowedResourceActions":  []String {
			"Microsoft.CloudPC/CloudPCs/Read",
		}
	}
}
requestBody.SetAdditionalData(map[string]interface{}{
	"condition": "null",
}
options := &msgraphsdk.RoleDefinitionsRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.RoleManagement().CloudPC().RoleDefinitions().Post(options)


```
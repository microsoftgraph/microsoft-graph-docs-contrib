---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

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
isEnabled := true
requestBody.SetIsEnabled(&isEnabled)
options := &msgraphsdk.RoleDefinitionsRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.RoleManagement().Directory().RoleDefinitions().Post(options);


```
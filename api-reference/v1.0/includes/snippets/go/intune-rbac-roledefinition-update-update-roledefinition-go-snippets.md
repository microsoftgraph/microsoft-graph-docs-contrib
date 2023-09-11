---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewRoleDefinition()
displayName := "Display Name value"
requestBody.SetDisplayName(&displayName) 
description := "Description value"
requestBody.SetDescription(&description) 


rolePermission := graphmodels.NewRolePermission()


resourceAction := graphmodels.NewResourceAction()
allowedResourceActions := []string {
	"Allowed Resource Actions value",
}
resourceAction.SetAllowedResourceActions(allowedResourceActions)
notAllowedResourceActions := []string {
	"Not Allowed Resource Actions value",
}
resourceAction.SetNotAllowedResourceActions(notAllowedResourceActions)

resourceActions := []graphmodels.ResourceActionable {
	resourceAction,
}
rolePermission.SetResourceActions(resourceActions)

rolePermissions := []graphmodels.RolePermissionable {
	rolePermission,
}
requestBody.SetRolePermissions(rolePermissions)
isBuiltIn := true
requestBody.SetIsBuiltIn(&isBuiltIn) 

roleDefinitions, err := graphClient.DeviceManagement().RoleDefinitions().ByRoleDefinitionId("roleDefinition-id").Patch(context.Background(), requestBody, nil)


```
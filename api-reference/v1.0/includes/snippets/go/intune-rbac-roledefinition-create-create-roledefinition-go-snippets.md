---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
roleDefinitions, err := graphClient.DeviceManagement().RoleDefinitions().Post(context.Background(), requestBody, nil)


```
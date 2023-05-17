---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewUnifiedRoleDefinition()
description := "Update basic properties of application registrations"
requestBody.SetDescription(&description) 
displayName := "Application Registration Support Administrator"
requestBody.SetDisplayName(&displayName) 


unifiedRolePermission := graphmodels.NewUnifiedRolePermission()
allowedResourceActions := []string {
	"microsoft.directory/applications/basic/read",

}
unifiedRolePermission.SetAllowedResourceActions(allowedResourceActions)

rolePermissions := []graphmodels.UnifiedRolePermissionable {
	unifiedRolePermission,

}
requestBody.SetRolePermissions(rolePermissions)
isEnabled := true
requestBody.SetIsEnabled(&isEnabled) 

result, err := graphClient.RoleManagement().Directory().RoleDefinitions().Post(context.Background(), requestBody, nil)


```
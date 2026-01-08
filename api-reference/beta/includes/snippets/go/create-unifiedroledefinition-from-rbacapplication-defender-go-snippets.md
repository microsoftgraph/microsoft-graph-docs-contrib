---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewUnifiedRoleDefinition()
description := "Role 1 description"
requestBody.SetDescription(&description) 
displayName := "Role 1"
requestBody.SetDisplayName(&displayName) 


unifiedRolePermission := graphmodels.NewUnifiedRolePermission()
allowedResourceActions := []string {
	"microsoft.xdr/securityposture/read",
}
unifiedRolePermission.SetAllowedResourceActions(allowedResourceActions)

rolePermissions := []graphmodels.UnifiedRolePermissionable {
	unifiedRolePermission,
}
requestBody.SetRolePermissions(rolePermissions)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
roleDefinitions, err := graphClient.RoleManagement().Defender().RoleDefinitions().Post(context.Background(), requestBody, nil)


```
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

requestBody := graphmodels.NewRoleAssignment()
displayName := "Display Name value"
requestBody.SetDisplayName(&displayName) 
description := "Description value"
requestBody.SetDescription(&description) 
resourceScopes := []string {
	"Resource Scopes value",
}
requestBody.SetResourceScopes(resourceScopes)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
roleAssignments, err := graphClient.DeviceManagement().RoleDefinitions().ByRoleDefinitionId("roleDefinition-id").RoleAssignments().ByRoleAssignmentId("roleAssignment-id").Patch(context.Background(), requestBody, nil)


```
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


requestBody := graphmodels.NewRoleAssignment()
displayName := "Display Name value"
requestBody.SetDisplayName(&displayName) 
description := "Description value"
requestBody.SetDescription(&description) 
resourceScopes := []string {
	"Resource Scopes value",
}
requestBody.SetResourceScopes(resourceScopes)

roleAssignments, err := graphClient.DeviceManagement().RoleDefinitions().ByRoleDefinitionId("roleDefinition-id").RoleAssignments().ByRoleAssignmentId("roleAssignment-id").Patch(context.Background(), requestBody, nil)


```
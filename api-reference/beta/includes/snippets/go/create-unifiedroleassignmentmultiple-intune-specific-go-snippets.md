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

requestBody := graphmodels.NewUnifiedRoleAssignmentMultiple()
displayName := "My test role assignment 1"
requestBody.SetDisplayName(&displayName) 
roleDefinitionId := "c2cf284d-6c41-4e6b-afac-4b80928c9034"
requestBody.SetRoleDefinitionId(&roleDefinitionId) 
principalIds := []string {
	"f8ca5a85-489a-49a0-b555-0a6d81e56f0d",
	"c1518aa9-4da5-4c84-a902-a31404023890",
}
requestBody.SetPrincipalIds(principalIds)
appScopeIds := []string {
	"allDevices",
}
requestBody.SetAppScopeIds(appScopeIds)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
roleAssignments, err := graphClient.RoleManagement().DeviceManagement().RoleAssignments().Post(context.Background(), requestBody, nil)


```
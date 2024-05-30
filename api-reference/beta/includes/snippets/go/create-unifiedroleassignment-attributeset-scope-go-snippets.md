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

requestBody := graphmodels.NewUnifiedRoleAssignment()
roleDefinitionId := "58a13ea3-c632-46ae-9ee0-9c0d43cd7f3d"
requestBody.SetRoleDefinitionId(&roleDefinitionId) 
principalId := "f8ca5a85-489a-49a0-b555-0a6d81e56f0d"
requestBody.SetPrincipalId(&principalId) 
directoryScopeId := "/attributeSets/Engineering"
requestBody.SetDirectoryScopeId(&directoryScopeId) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
roleAssignments, err := graphClient.RoleManagement().Directory().RoleAssignments().Post(context.Background(), requestBody, nil)


```
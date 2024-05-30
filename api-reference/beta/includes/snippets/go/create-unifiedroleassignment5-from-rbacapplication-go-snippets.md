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
principalId := "/ServicePrincipals/0451dbb9-6336-42ea-b58f-5953dc053ece"
requestBody.SetPrincipalId(&principalId) 
roleDefinitionId := "f66ab1ee-3cac-4d03-8a64-dadc56e563f8"
requestBody.SetRoleDefinitionId(&roleDefinitionId) 
directoryScopeId := "/AdministrativeUnits/8b532c7a-4d3e-4e99-8ffa-2dfec92c62eb"
requestBody.SetDirectoryScopeId(&directoryScopeId) 
appScopeId := null
requestBody.SetAppScopeId(&appScopeId) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
roleAssignments, err := graphClient.RoleManagement().Exchange().RoleAssignments().Post(context.Background(), requestBody, nil)


```
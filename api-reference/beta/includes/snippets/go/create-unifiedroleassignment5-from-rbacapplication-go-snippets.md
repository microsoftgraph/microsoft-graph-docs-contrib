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


requestBody := graphmodels.NewUnifiedRoleAssignment()
principalId := "/ServicePrincipals/0451dbb9-6336-42ea-b58f-5953dc053ece"
requestBody.SetPrincipalId(&principalId) 
roleDefinitionId := "f66ab1ee-3cac-4d03-8a64-dadc56e563f8"
requestBody.SetRoleDefinitionId(&roleDefinitionId) 
directoryScopeId := "/AdministrativeUnits/8b532c7a-4d3e-4e99-8ffa-2dfec92c62eb"
requestBody.SetDirectoryScopeId(&directoryScopeId) 
appScopeId := null
requestBody.SetAppScopeId(&appScopeId) 

result, err := graphClient.RoleManagement().Exchange().RoleAssignments().Post(context.Background(), requestBody, nil)


```
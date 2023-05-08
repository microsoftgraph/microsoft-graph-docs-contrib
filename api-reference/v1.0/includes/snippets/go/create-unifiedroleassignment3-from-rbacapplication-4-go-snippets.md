---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewUnifiedRoleAssignment()
principalId := "679a9213-c497-48a4-830a-8d3d25d94ddc"
requestBody.SetPrincipalId(&principalId) 
roleDefinitionId := "ae79f266-94d4-4dab-b730-feca7e132178"
requestBody.SetRoleDefinitionId(&roleDefinitionId) 
appScopeId := "/AccessPackageCatalog/beedadfe-01d5-4025-910b-84abb9369997"
requestBody.SetAppScopeId(&appScopeId) 

result, err := graphClient.RoleManagement().EntitlementManagement().RoleAssignments().Post(context.Background(), requestBody, nil)


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  "github.com/google/uuid"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAppRoleAssignment()
principalId := uuid.MustParse("9028d19c-26a9-4809-8e3f-20ff73e2d75e")
requestBody.SetPrincipalId(&principalId) 
resourceId := uuid.MustParse("8fce32da-1246-437b-99cd-76d1d4677bd5")
requestBody.SetResourceId(&resourceId) 
appRoleId := uuid.MustParse("498476ce-e0fe-48b0-b801-37ba7e2685c6")
requestBody.SetAppRoleId(&appRoleId) 

result, err := graphClient.ServicePrincipals().ByServicePrincipalId("servicePrincipal-id").AppRoleAssignments().Post(context.Background(), requestBody, nil)


```
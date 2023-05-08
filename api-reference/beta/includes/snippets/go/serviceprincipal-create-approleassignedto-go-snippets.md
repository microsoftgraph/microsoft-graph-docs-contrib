---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  "github.com/google/uuid"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAppRoleAssignment()
principalId := uuid.MustParse("33ad69f9-da99-4bed-acd0-3f24235cb296")
requestBody.SetPrincipalId(&principalId) 
resourceId := uuid.MustParse("9028d19c-26a9-4809-8e3f-20ff73e2d75e")
requestBody.SetResourceId(&resourceId) 
appRoleId := uuid.MustParse("ef7437e6-4f94-4a0a-a110-a439eb2aa8f7")
requestBody.SetAppRoleId(&appRoleId) 

result, err := graphClient.ServicePrincipals().ByServicePrincipalId("servicePrincipal-id").AppRoleAssignedTo().Post(context.Background(), requestBody, nil)


```
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
principalId := uuid.MustParse("b0d9b9e3-0ecf-4bfd-8dab-9273dd055a94")
requestBody.SetPrincipalId(&principalId) 
resourceId := uuid.MustParse("7ea9e944-71ce-443d-811c-71e8047b557a")
requestBody.SetResourceId(&resourceId) 
appRoleId := uuid.MustParse("df021288-bdef-4463-88db-98f22de89214")
requestBody.SetAppRoleId(&appRoleId) 

result, err := graphClient.ServicePrincipals().ByServicePrincipalId("servicePrincipal-id").AppRoleAssignedTo().Post(context.Background(), requestBody, nil)


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  "github.com/google/uuid"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewAppRoleAssignment()
principalId := uuid.MustParse("b0d9b9e3-0ecf-4bfd-8dab-9273dd055a94")
requestBody.SetPrincipalId(&principalId) 
resourceId := uuid.MustParse("7ea9e944-71ce-443d-811c-71e8047b557a")
requestBody.SetResourceId(&resourceId) 
appRoleId := uuid.MustParse("df021288-bdef-4463-88db-98f22de89214")
requestBody.SetAppRoleId(&appRoleId) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
appRoleAssignedTo, err := graphClient.ServicePrincipals().ByServicePrincipalId("servicePrincipal-id").AppRoleAssignedTo().Post(context.Background(), requestBody, nil)


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  "github.com/google/uuid"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewAppRoleAssignment()
principalId := uuid.MustParse("4628e7df-dff3-407c-a08f-75f08c0806dc")
requestBody.SetPrincipalId(&principalId) 
principalType := "User"
requestBody.SetPrincipalType(&principalType) 
appRoleId := uuid.MustParse("18d14569-c3bd-439b-9a66-3a2aee01d14f")
requestBody.SetAppRoleId(&appRoleId) 
resourceId := uuid.MustParse("a8cac399-cde5-4516-a674-819503c61313")
requestBody.SetResourceId(&resourceId) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
appRoleAssignments, err := graphClient.ServicePrincipals().ByServicePrincipalId("servicePrincipal-id").AppRoleAssignments().Post(context.Background(), requestBody, nil)


```
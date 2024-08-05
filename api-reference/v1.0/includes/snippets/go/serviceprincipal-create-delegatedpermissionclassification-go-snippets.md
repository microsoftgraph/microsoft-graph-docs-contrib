---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewDelegatedPermissionClassification()
permissionId := "e1fe6dd8-ba31-4d61-89e7-88639da4683d"
requestBody.SetPermissionId(&permissionId) 
permissionName := "User.Read"
requestBody.SetPermissionName(&permissionName) 
classification := graphmodels.LOW_PERMISSIONCLASSIFICATIONTYPE 
requestBody.SetClassification(&classification) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
delegatedPermissionClassifications, err := graphClient.ServicePrincipals().ByServicePrincipalId("servicePrincipal-id").DelegatedPermissionClassifications().Post(context.Background(), requestBody, nil)


```
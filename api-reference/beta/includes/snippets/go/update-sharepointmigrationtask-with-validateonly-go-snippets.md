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

requestBody := graphmodels.NewSharePointMigrationTask()
parameters := graphmodels.NewSharePointUserMigrationTaskParameters()
targetOrganizationHost := "https://fabrico-my.sharepoint.com"
parameters.SetTargetOrganizationHost(&targetOrganizationHost) 
validateOnly := true
parameters.SetValidateOnly(&validateOnly) 
sourceUserIdentity := graphmodels.NewUserIdentity()
userPrincipalName := "source-user@contoso.onmicrosoft.com"
sourceUserIdentity.SetUserPrincipalName(&userPrincipalName) 
parameters.SetSourceUserIdentity(sourceUserIdentity)
targetUserIdentity := graphmodels.NewUserIdentity()
userPrincipalName := "target-user@fabrico.onmicrosoft.com"
targetUserIdentity.SetUserPrincipalName(&userPrincipalName) 
parameters.SetTargetUserIdentity(targetUserIdentity)
requestBody.SetParameters(parameters)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
crossOrganizationMigrationTasks, err := graphClient.Solutions().SharePoint().Migrations().CrossOrganizationMigrationTasks().Post(context.Background(), requestBody, nil)


```
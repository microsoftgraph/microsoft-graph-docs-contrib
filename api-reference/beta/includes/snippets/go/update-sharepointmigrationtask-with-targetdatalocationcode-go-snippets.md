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
targetOrganizationId := uuid.MustParse("78d010af-72cb-412f-8779-18ce9b5f553b")
parameters.SetTargetOrganizationId(&targetOrganizationId) 
targetDataLocationCode := null
parameters.SetTargetDataLocationCode(&targetDataLocationCode) 
sourceUserIdentity := graphmodels.NewUserIdentity()
id := "da157a29-f793-4dd6-9c73-41d2c73c2546"
sourceUserIdentity.SetId(&id) 
parameters.SetSourceUserIdentity(sourceUserIdentity)
targetUserIdentity := graphmodels.NewUserIdentity()
id := "cb53ea98-6151-44cc-9c21-098a3c3e3988"
targetUserIdentity.SetId(&id) 
parameters.SetTargetUserIdentity(targetUserIdentity)
requestBody.SetParameters(parameters)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
crossOrganizationMigrationTasks, err := graphClient.Solutions().SharePoint().Migrations().CrossOrganizationMigrationTasks().Post(context.Background(), requestBody, nil)


```
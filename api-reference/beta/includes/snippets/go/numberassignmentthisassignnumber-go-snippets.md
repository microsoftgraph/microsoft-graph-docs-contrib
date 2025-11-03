---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphadmin "github.com/microsoftgraph/msgraph-beta-sdk-go/admin"
	  graphmodelsteamsadministration "github.com/microsoftgraph/msgraph-beta-sdk-go/models/teamsadministration"
	  //other-imports
)

requestBody := graphadmin.NewAssignNumberPostRequestBody()
telephoneNumber := "12061234567"
requestBody.SetTelephoneNumber(&telephoneNumber) 
assignmentTargetId := "94ec379d-30a2-4cdb-a377-75e42f7a61e5"
requestBody.SetAssignmentTargetId(&assignmentTargetId) 
numberType := graphmodels.DIRECTROUTING_NUMBERTYPE 
requestBody.SetNumberType(&numberType) 
assignmentCategory := graphmodels.PRIMARY_ASSIGNMENTCATEGORY 
requestBody.SetAssignmentCategory(&assignmentCategory) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.Admin().Teams().TelephoneNumberManagement().NumberAssignments().MicrosoftGraphTeamsAdministrationAssignNumber().Post(context.Background(), requestBody, nil)


```
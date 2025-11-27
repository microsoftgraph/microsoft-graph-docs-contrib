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

requestBody := graphadmin.NewUnassignNumberPostRequestBody()
telephoneNumber := "12061234567"
requestBody.SetTelephoneNumber(&telephoneNumber) 
numberType := graphmodels.DIRECTROUTING_NUMBERTYPE 
requestBody.SetNumberType(&numberType) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.Admin().Teams().TelephoneNumberManagement().NumberAssignments().MicrosoftGraphTeamsAdministrationUnassignNumber().Post(context.Background(), requestBody, nil)


```
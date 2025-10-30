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
	  //other-imports
)

requestBody := graphadmin.NewUpdateNumberPostRequestBody()
telephoneNumber := "+12061234567"
requestBody.SetTelephoneNumber(&telephoneNumber) 
locationId := "93cb8a70-b4af-41df-9928-d07607e21776"
requestBody.SetLocationId(&locationId) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.Admin().Teams().TelephoneNumberManagement().NumberAssignments().MicrosoftGraphTeamsAdministrationUpdateNumber().Post(context.Background(), requestBody, nil)


```
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

requestBody := graphmodels.NewCalendarPermission()
emailAddress := graphmodels.NewEmailAddress()
name := "Samantha Booth"
emailAddress.SetName(&name) 
address := "samanthab@contoso.com"
emailAddress.SetAddress(&address) 
requestBody.SetEmailAddress(emailAddress)
isInsideOrganization := true
requestBody.SetIsInsideOrganization(&isInsideOrganization) 
isRemovable := true
requestBody.SetIsRemovable(&isRemovable) 
role := graphmodels.READ_CALENDARROLETYPE 
requestBody.SetRole(&role) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
calendarPermissions, err := graphClient.Me().Calendar().CalendarPermissions().Post(context.Background(), requestBody, nil)


```
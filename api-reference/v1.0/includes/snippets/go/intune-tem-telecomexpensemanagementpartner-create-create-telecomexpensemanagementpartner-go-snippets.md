---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewTelecomExpenseManagementPartner()
displayName := "Display Name value"
requestBody.SetDisplayName(&displayName) 
url := "Url value"
requestBody.SetUrl(&url) 
appAuthorized := true
requestBody.SetAppAuthorized(&appAuthorized) 
enabled := true
requestBody.SetEnabled(&enabled) 
lastConnectionDateTime , err := time.Parse(time.RFC3339, "2016-12-31T23:58:36.6670033-08:00")
requestBody.SetLastConnectionDateTime(&lastConnectionDateTime) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
telecomExpenseManagementPartners, err := graphClient.DeviceManagement().TelecomExpenseManagementPartners().Post(context.Background(), requestBody, nil)


```
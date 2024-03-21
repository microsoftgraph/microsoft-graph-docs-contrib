---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


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

telecomExpenseManagementPartners, err := graphClient.DeviceManagement().TelecomExpenseManagementPartners().ByTelecomExpenseManagementPartnerId("telecomExpenseManagementPartner-id").Patch(context.Background(), requestBody, nil)


```
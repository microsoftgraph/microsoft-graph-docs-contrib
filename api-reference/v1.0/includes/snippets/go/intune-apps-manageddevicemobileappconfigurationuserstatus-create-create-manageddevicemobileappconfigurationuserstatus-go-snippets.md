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

requestBody := graphmodels.NewManagedDeviceMobileAppConfigurationUserStatus()
userDisplayName := "User Display Name value"
requestBody.SetUserDisplayName(&userDisplayName) 
devicesCount := int32(12)
requestBody.SetDevicesCount(&devicesCount) 
status := graphmodels.NOTAPPLICABLE_COMPLIANCESTATUS 
requestBody.SetStatus(&status) 
lastReportedDateTime , err := time.Parse(time.RFC3339, "2017-01-01T00:00:17.7769392-08:00")
requestBody.SetLastReportedDateTime(&lastReportedDateTime) 
userPrincipalName := "User Principal Name value"
requestBody.SetUserPrincipalName(&userPrincipalName) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
userStatuses, err := graphClient.DeviceAppManagement().MobileAppConfigurations().ByManagedDeviceMobileAppConfigurationId("managedDeviceMobileAppConfiguration-id").UserStatuses().Post(context.Background(), requestBody, nil)


```
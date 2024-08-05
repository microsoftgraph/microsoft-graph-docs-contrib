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

requestBody := graphmodels.NewDeviceConfigurationUserOverview()
pendingCount := int32(12)
requestBody.SetPendingCount(&pendingCount) 
notApplicableCount := int32(2)
requestBody.SetNotApplicableCount(&notApplicableCount) 
successCount := int32(12)
requestBody.SetSuccessCount(&successCount) 
errorCount := int32(10)
requestBody.SetErrorCount(&errorCount) 
failedCount := int32(11)
requestBody.SetFailedCount(&failedCount) 
lastUpdateDateTime , err := time.Parse(time.RFC3339, "2016-12-31T23:58:21.6459442-08:00")
requestBody.SetLastUpdateDateTime(&lastUpdateDateTime) 
configurationVersion := int32(4)
requestBody.SetConfigurationVersion(&configurationVersion) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
userStatusOverview, err := graphClient.DeviceManagement().DeviceConfigurations().ByDeviceConfigurationId("deviceConfiguration-id").UserStatusOverview().Patch(context.Background(), requestBody, nil)


```
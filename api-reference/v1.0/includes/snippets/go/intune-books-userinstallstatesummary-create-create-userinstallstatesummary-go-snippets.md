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

requestBody := graphmodels.NewUserInstallStateSummary()
userName := "User Name value"
requestBody.SetUserName(&userName) 
installedDeviceCount := int32(4)
requestBody.SetInstalledDeviceCount(&installedDeviceCount) 
failedDeviceCount := int32(1)
requestBody.SetFailedDeviceCount(&failedDeviceCount) 
notInstalledDeviceCount := int32(7)
requestBody.SetNotInstalledDeviceCount(&notInstalledDeviceCount) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
userStateSummary, err := graphClient.DeviceAppManagement().ManagedEBooks().ByManagedEBookId("managedEBook-id").UserStateSummary().Post(context.Background(), requestBody, nil)


```
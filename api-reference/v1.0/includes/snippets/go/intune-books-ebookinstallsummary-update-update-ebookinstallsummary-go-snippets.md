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

requestBody := graphmodels.NewEBookInstallSummary()
installedDeviceCount := int32(4)
requestBody.SetInstalledDeviceCount(&installedDeviceCount) 
failedDeviceCount := int32(1)
requestBody.SetFailedDeviceCount(&failedDeviceCount) 
notInstalledDeviceCount := int32(7)
requestBody.SetNotInstalledDeviceCount(&notInstalledDeviceCount) 
installedUserCount := int32(2)
requestBody.SetInstalledUserCount(&installedUserCount) 
failedUserCount := int32(15)
requestBody.SetFailedUserCount(&failedUserCount) 
notInstalledUserCount := int32(5)
requestBody.SetNotInstalledUserCount(&notInstalledUserCount) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
installSummary, err := graphClient.DeviceAppManagement().ManagedEBooks().ByManagedEBookId("managedEBook-id").InstallSummary().Patch(context.Background(), requestBody, nil)


```
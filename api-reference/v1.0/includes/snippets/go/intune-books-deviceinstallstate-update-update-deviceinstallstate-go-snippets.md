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

requestBody := graphmodels.NewDeviceInstallState()
deviceName := "Device Name value"
requestBody.SetDeviceName(&deviceName) 
deviceId := "Device Id value"
requestBody.SetDeviceId(&deviceId) 
lastSyncDateTime , err := time.Parse(time.RFC3339, "2017-01-01T00:02:49.3205976-08:00")
requestBody.SetLastSyncDateTime(&lastSyncDateTime) 
installState := graphmodels.INSTALLED_INSTALLSTATE 
requestBody.SetInstallState(&installState) 
errorCode := "Error Code value"
requestBody.SetErrorCode(&errorCode) 
osVersion := "Os Version value"
requestBody.SetOsVersion(&osVersion) 
osDescription := "Os Description value"
requestBody.SetOsDescription(&osDescription) 
userName := "User Name value"
requestBody.SetUserName(&userName) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
deviceStates, err := graphClient.DeviceAppManagement().ManagedEBooks().ByManagedEBookId("managedEBook-id").DeviceStates().ByDeviceInstallStateId("deviceInstallState-id").Patch(context.Background(), requestBody, nil)


```
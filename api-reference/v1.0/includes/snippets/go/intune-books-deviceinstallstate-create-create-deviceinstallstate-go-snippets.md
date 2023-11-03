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

deviceStates, err := graphClient.DeviceAppManagement().ManagedEBooks().ByManagedEBookId("managedEBook-id").DeviceStates().Post(context.Background(), requestBody, nil)


```
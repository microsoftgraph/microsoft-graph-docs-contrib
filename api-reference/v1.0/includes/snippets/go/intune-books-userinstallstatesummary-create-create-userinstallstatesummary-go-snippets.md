---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewUserInstallStateSummary()
userName := "User Name value"
requestBody.SetUserName(&userName) 
installedDeviceCount := int32(4)
requestBody.SetInstalledDeviceCount(&installedDeviceCount) 
failedDeviceCount := int32(1)
requestBody.SetFailedDeviceCount(&failedDeviceCount) 
notInstalledDeviceCount := int32(7)
requestBody.SetNotInstalledDeviceCount(&notInstalledDeviceCount) 

userStateSummary, err := graphClient.DeviceAppManagement().ManagedEBooks().ByManagedEBookId("managedEBook-id").UserStateSummary().Post(context.Background(), requestBody, nil)


```
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

result, err := graphClient.DeviceAppManagement().ManagedEBooks().ByManagedEBookId("managedEBook-id").InstallSummary().Patch(context.Background(), requestBody, nil)


```
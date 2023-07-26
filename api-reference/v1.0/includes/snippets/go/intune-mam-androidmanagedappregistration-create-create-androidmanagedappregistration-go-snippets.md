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


requestBody := graphmodels.NewManagedAppRegistration()
lastSyncDateTime , err := time.Parse(time.RFC3339, "2017-01-01T00:02:49.3205976-08:00")
requestBody.SetLastSyncDateTime(&lastSyncDateTime) 
applicationVersion := "Application Version value"
requestBody.SetApplicationVersion(&applicationVersion) 
managementSdkVersion := "Management Sdk Version value"
requestBody.SetManagementSdkVersion(&managementSdkVersion) 
platformVersion := "Platform Version value"
requestBody.SetPlatformVersion(&platformVersion) 
deviceType := "Device Type value"
requestBody.SetDeviceType(&deviceType) 
deviceTag := "Device Tag value"
requestBody.SetDeviceTag(&deviceTag) 
deviceName := "Device Name value"
requestBody.SetDeviceName(&deviceName) 
flaggedReasons := []graphmodels.ManagedAppFlaggedReasonable {
	managedAppFlaggedReason := graphmodels.ROOTEDDEVICE_MANAGEDAPPFLAGGEDREASON 
	requestBody.SetManagedAppFlaggedReason(&managedAppFlaggedReason)
}
requestBody.SetFlaggedReasons(flaggedReasons)
userId := "User Id value"
requestBody.SetUserId(&userId) 
appIdentifier := graphmodels.NewAndroidMobileAppIdentifier()
packageId := "Package Id value"
appIdentifier.SetPackageId(&packageId) 
requestBody.SetAppIdentifier(appIdentifier)
version := "Version value"
requestBody.SetVersion(&version) 

result, err := graphClient.DeviceAppManagement().ManagedAppRegistrations().Post(context.Background(), requestBody, nil)


```
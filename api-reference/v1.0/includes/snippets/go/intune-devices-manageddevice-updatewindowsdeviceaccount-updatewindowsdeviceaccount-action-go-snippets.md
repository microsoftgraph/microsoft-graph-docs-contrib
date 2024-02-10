---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphdevicemanagement "github.com/microsoftgraph/msgraph-sdk-go/devicemanagement"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphdevicemanagement.NewUpdateWindowsDeviceAccountPostRequestBody()
updateWindowsDeviceAccountActionParameter := graphmodels.NewUpdateWindowsDeviceAccountActionParameter()
deviceAccount := graphmodels.NewWindowsDeviceAccount()
password := "Password value"
deviceAccount.SetPassword(&password) 
updateWindowsDeviceAccountActionParameter.SetDeviceAccount(deviceAccount)
passwordRotationEnabled := true
updateWindowsDeviceAccountActionParameter.SetPasswordRotationEnabled(&passwordRotationEnabled) 
calendarSyncEnabled := true
updateWindowsDeviceAccountActionParameter.SetCalendarSyncEnabled(&calendarSyncEnabled) 
deviceAccountEmail := "Device Account Email value"
updateWindowsDeviceAccountActionParameter.SetDeviceAccountEmail(&deviceAccountEmail) 
exchangeServer := "Exchange Server value"
updateWindowsDeviceAccountActionParameter.SetExchangeServer(&exchangeServer) 
sessionInitiationProtocalAddress := "Session Initiation Protocal Address value"
updateWindowsDeviceAccountActionParameter.SetSessionInitiationProtocalAddress(&sessionInitiationProtocalAddress) 
requestBody.SetUpdateWindowsDeviceAccountActionParameter(updateWindowsDeviceAccountActionParameter)

graphClient.DeviceManagement().ManagedDevices().ByManagedDeviceId("managedDevice-id").UpdateWindowsDeviceAccount().Post(context.Background(), requestBody, nil)


```
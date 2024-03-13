---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphdevicemanagement "github.com/microsoftgraph/msgraph-sdk-go/devicemanagement"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphdevicemanagement.NewCleanWindowsDevicePostRequestBody()
keepUserData := true
requestBody.SetKeepUserData(&keepUserData) 

graphClient.DeviceManagement().ManagedDevices().ByManagedDeviceId("managedDevice-id").CleanWindowsDevice().Post(context.Background(), requestBody, nil)


```
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


requestBody := graphdevicemanagement.NewWindowsDefenderScanPostRequestBody()
quickScan := true
requestBody.SetQuickScan(&quickScan) 

graphClient.DeviceManagement().ManagedDevices().ByManagedDeviceId("managedDevice-id").WindowsDefenderScan().Post(context.Background(), requestBody, nil)


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphdevicemanagement "github.com/microsoftgraph/msgraph-sdk-go/devicemanagement"
	  //other-imports
)

requestBody := graphdevicemanagement.NewWindowsDefenderScanPostRequestBody()
quickScan := true
requestBody.SetQuickScan(&quickScan) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.DeviceManagement().ManagedDevices().ByManagedDeviceId("managedDevice-id").WindowsDefenderScan().Post(context.Background(), requestBody, nil)


```
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

requestBody := graphdevicemanagement.NewWipePostRequestBody()
keepEnrollmentData := true
requestBody.SetKeepEnrollmentData(&keepEnrollmentData) 
keepUserData := true
requestBody.SetKeepUserData(&keepUserData) 
macOsUnlockCode := "Mac Os Unlock Code value"
requestBody.SetMacOsUnlockCode(&macOsUnlockCode) 
persistEsimDataPlan := true
requestBody.SetPersistEsimDataPlan(&persistEsimDataPlan) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.DeviceManagement().ManagedDevices().ByManagedDeviceId("managedDevice-id").Wipe().Post(context.Background(), requestBody, nil)


```
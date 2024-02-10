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


requestBody := graphdevicemanagement.NewWipePostRequestBody()
keepEnrollmentData := true
requestBody.SetKeepEnrollmentData(&keepEnrollmentData) 
keepUserData := true
requestBody.SetKeepUserData(&keepUserData) 
macOsUnlockCode := "Mac Os Unlock Code value"
requestBody.SetMacOsUnlockCode(&macOsUnlockCode) 
persistEsimDataPlan := true
requestBody.SetPersistEsimDataPlan(&persistEsimDataPlan) 

graphClient.DeviceManagement().ManagedDevices().ByManagedDeviceId("managedDevice-id").Wipe().Post(context.Background(), requestBody, nil)


```
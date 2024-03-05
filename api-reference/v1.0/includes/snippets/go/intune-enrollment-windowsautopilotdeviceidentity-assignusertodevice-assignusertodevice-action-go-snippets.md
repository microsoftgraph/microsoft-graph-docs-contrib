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


requestBody := graphdevicemanagement.NewAssignUserToDevicePostRequestBody()
userPrincipalName := "User Principal Name value"
requestBody.SetUserPrincipalName(&userPrincipalName) 
addressableUserName := "Addressable User Name value"
requestBody.SetAddressableUserName(&addressableUserName) 

graphClient.DeviceManagement().WindowsAutopilotDeviceIdentities().ByWindowsAutopilotDeviceIdentityId("windowsAutopilotDeviceIdentity-id").AssignUserToDevice().Post(context.Background(), requestBody, nil)


```
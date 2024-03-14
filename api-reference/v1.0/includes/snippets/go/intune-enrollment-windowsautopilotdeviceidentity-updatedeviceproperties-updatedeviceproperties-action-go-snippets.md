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


requestBody := graphdevicemanagement.NewUpdateDevicePropertiesPostRequestBody()
userPrincipalName := "User Principal Name value"
requestBody.SetUserPrincipalName(&userPrincipalName) 
addressableUserName := "Addressable User Name value"
requestBody.SetAddressableUserName(&addressableUserName) 
groupTag := "Group Tag value"
requestBody.SetGroupTag(&groupTag) 
displayName := "Display Name value"
requestBody.SetDisplayName(&displayName) 

graphClient.DeviceManagement().WindowsAutopilotDeviceIdentities().ByWindowsAutopilotDeviceIdentityId("windowsAutopilotDeviceIdentity-id").UpdateDeviceProperties().Post(context.Background(), requestBody, nil)


```
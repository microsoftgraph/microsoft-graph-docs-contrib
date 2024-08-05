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

requestBody := graphdevicemanagement.NewUpdateDevicePropertiesPostRequestBody()
userPrincipalName := "User Principal Name value"
requestBody.SetUserPrincipalName(&userPrincipalName) 
addressableUserName := "Addressable User Name value"
requestBody.SetAddressableUserName(&addressableUserName) 
groupTag := "Group Tag value"
requestBody.SetGroupTag(&groupTag) 
displayName := "Display Name value"
requestBody.SetDisplayName(&displayName) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.DeviceManagement().WindowsAutopilotDeviceIdentities().ByWindowsAutopilotDeviceIdentityId("windowsAutopilotDeviceIdentity-id").UpdateDeviceProperties().Post(context.Background(), requestBody, nil)


```
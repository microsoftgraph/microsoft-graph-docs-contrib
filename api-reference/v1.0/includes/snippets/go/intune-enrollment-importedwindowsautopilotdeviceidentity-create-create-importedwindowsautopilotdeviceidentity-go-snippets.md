---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewImportedWindowsAutopilotDeviceIdentity()
groupTag := "Group Tag value"
requestBody.SetGroupTag(&groupTag) 
serialNumber := "Serial Number value"
requestBody.SetSerialNumber(&serialNumber) 
productKey := "Product Key value"
requestBody.SetProductKey(&productKey) 
importId := "Import Id value"
requestBody.SetImportId(&importId) 
hardwareIdentifier := []byte("aGFyZHdhcmVJZGVudGlmaWVy")
requestBody.SetHardwareIdentifier(&hardwareIdentifier) 
state := graphmodels.NewImportedWindowsAutopilotDeviceIdentityState()
deviceImportStatus := graphmodels.PENDING_IMPORTEDWINDOWSAUTOPILOTDEVICEIDENTITYIMPORTSTATUS 
state.SetDeviceImportStatus(&deviceImportStatus) 
deviceRegistrationId := "Device Registration Id value"
state.SetDeviceRegistrationId(&deviceRegistrationId) 
deviceErrorCode := int32(15)
state.SetDeviceErrorCode(&deviceErrorCode) 
deviceErrorName := "Device Error Name value"
state.SetDeviceErrorName(&deviceErrorName) 
requestBody.SetState(state)
assignedUserPrincipalName := "Assigned User Principal Name value"
requestBody.SetAssignedUserPrincipalName(&assignedUserPrincipalName) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
importedWindowsAutopilotDeviceIdentities, err := graphClient.DeviceManagement().ImportedWindowsAutopilotDeviceIdentities().Post(context.Background(), requestBody, nil)


```
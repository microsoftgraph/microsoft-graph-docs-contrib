---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


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

result, err := graphClient.DeviceManagement().ImportedWindowsAutopilotDeviceIdentities().Post(context.Background(), requestBody, nil)


```
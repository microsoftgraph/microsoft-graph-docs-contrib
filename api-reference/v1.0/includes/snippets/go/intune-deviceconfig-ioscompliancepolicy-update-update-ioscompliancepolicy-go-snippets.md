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


requestBody := graphmodels.NewDeviceCompliancePolicy()
description := "Description value"
requestBody.SetDescription(&description) 
displayName := "Display Name value"
requestBody.SetDisplayName(&displayName) 
version := int32(7)
requestBody.SetVersion(&version) 
passcodeBlockSimple := true
requestBody.SetPasscodeBlockSimple(&passcodeBlockSimple) 
passcodeExpirationDays := int32(6)
requestBody.SetPasscodeExpirationDays(&passcodeExpirationDays) 
passcodeMinimumLength := int32(5)
requestBody.SetPasscodeMinimumLength(&passcodeMinimumLength) 
passcodeMinutesOfInactivityBeforeLock := int32(5)
requestBody.SetPasscodeMinutesOfInactivityBeforeLock(&passcodeMinutesOfInactivityBeforeLock) 
passcodePreviousPasscodeBlockCount := int32(2)
requestBody.SetPasscodePreviousPasscodeBlockCount(&passcodePreviousPasscodeBlockCount) 
passcodeMinimumCharacterSetCount := int32(0)
requestBody.SetPasscodeMinimumCharacterSetCount(&passcodeMinimumCharacterSetCount) 
passcodeRequiredType := graphmodels.ALPHANUMERIC_REQUIREDPASSWORDTYPE 
requestBody.SetPasscodeRequiredType(&passcodeRequiredType) 
passcodeRequired := true
requestBody.SetPasscodeRequired(&passcodeRequired) 
osMinimumVersion := "Os Minimum Version value"
requestBody.SetOsMinimumVersion(&osMinimumVersion) 
osMaximumVersion := "Os Maximum Version value"
requestBody.SetOsMaximumVersion(&osMaximumVersion) 
securityBlockJailbrokenDevices := true
requestBody.SetSecurityBlockJailbrokenDevices(&securityBlockJailbrokenDevices) 
deviceThreatProtectionEnabled := true
requestBody.SetDeviceThreatProtectionEnabled(&deviceThreatProtectionEnabled) 
deviceThreatProtectionRequiredSecurityLevel := graphmodels.SECURED_DEVICETHREATPROTECTIONLEVEL 
requestBody.SetDeviceThreatProtectionRequiredSecurityLevel(&deviceThreatProtectionRequiredSecurityLevel) 
managedEmailProfileRequired := true
requestBody.SetManagedEmailProfileRequired(&managedEmailProfileRequired) 

deviceCompliancePolicies, err := graphClient.DeviceManagement().DeviceCompliancePolicies().ByDeviceCompliancePolicyId("deviceCompliancePolicy-id").Patch(context.Background(), requestBody, nil)


```
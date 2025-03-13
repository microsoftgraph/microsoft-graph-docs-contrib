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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
deviceCompliancePolicies, err := graphClient.DeviceManagement().DeviceCompliancePolicies().ByDeviceCompliancePolicyId("deviceCompliancePolicy-id").Patch(context.Background(), requestBody, nil)


```
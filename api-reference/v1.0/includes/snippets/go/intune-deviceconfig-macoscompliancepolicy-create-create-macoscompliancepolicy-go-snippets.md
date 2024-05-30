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
passwordRequired := true
requestBody.SetPasswordRequired(&passwordRequired) 
passwordBlockSimple := true
requestBody.SetPasswordBlockSimple(&passwordBlockSimple) 
passwordExpirationDays := int32(6)
requestBody.SetPasswordExpirationDays(&passwordExpirationDays) 
passwordMinimumLength := int32(5)
requestBody.SetPasswordMinimumLength(&passwordMinimumLength) 
passwordMinutesOfInactivityBeforeLock := int32(5)
requestBody.SetPasswordMinutesOfInactivityBeforeLock(&passwordMinutesOfInactivityBeforeLock) 
passwordPreviousPasswordBlockCount := int32(2)
requestBody.SetPasswordPreviousPasswordBlockCount(&passwordPreviousPasswordBlockCount) 
passwordMinimumCharacterSetCount := int32(0)
requestBody.SetPasswordMinimumCharacterSetCount(&passwordMinimumCharacterSetCount) 
passwordRequiredType := graphmodels.ALPHANUMERIC_REQUIREDPASSWORDTYPE 
requestBody.SetPasswordRequiredType(&passwordRequiredType) 
osMinimumVersion := "Os Minimum Version value"
requestBody.SetOsMinimumVersion(&osMinimumVersion) 
osMaximumVersion := "Os Maximum Version value"
requestBody.SetOsMaximumVersion(&osMaximumVersion) 
systemIntegrityProtectionEnabled := true
requestBody.SetSystemIntegrityProtectionEnabled(&systemIntegrityProtectionEnabled) 
deviceThreatProtectionEnabled := true
requestBody.SetDeviceThreatProtectionEnabled(&deviceThreatProtectionEnabled) 
deviceThreatProtectionRequiredSecurityLevel := graphmodels.SECURED_DEVICETHREATPROTECTIONLEVEL 
requestBody.SetDeviceThreatProtectionRequiredSecurityLevel(&deviceThreatProtectionRequiredSecurityLevel) 
storageRequireEncryption := true
requestBody.SetStorageRequireEncryption(&storageRequireEncryption) 
firewallEnabled := true
requestBody.SetFirewallEnabled(&firewallEnabled) 
firewallBlockAllIncoming := true
requestBody.SetFirewallBlockAllIncoming(&firewallBlockAllIncoming) 
firewallEnableStealthMode := true
requestBody.SetFirewallEnableStealthMode(&firewallEnableStealthMode) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
deviceCompliancePolicies, err := graphClient.DeviceManagement().DeviceCompliancePolicies().Post(context.Background(), requestBody, nil)


```
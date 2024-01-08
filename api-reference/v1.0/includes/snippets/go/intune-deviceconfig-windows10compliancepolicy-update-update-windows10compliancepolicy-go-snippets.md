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
passwordRequired := true
requestBody.SetPasswordRequired(&passwordRequired) 
passwordBlockSimple := true
requestBody.SetPasswordBlockSimple(&passwordBlockSimple) 
passwordRequiredToUnlockFromIdle := true
requestBody.SetPasswordRequiredToUnlockFromIdle(&passwordRequiredToUnlockFromIdle) 
passwordMinutesOfInactivityBeforeLock := int32(5)
requestBody.SetPasswordMinutesOfInactivityBeforeLock(&passwordMinutesOfInactivityBeforeLock) 
passwordExpirationDays := int32(6)
requestBody.SetPasswordExpirationDays(&passwordExpirationDays) 
passwordMinimumLength := int32(5)
requestBody.SetPasswordMinimumLength(&passwordMinimumLength) 
passwordMinimumCharacterSetCount := int32(0)
requestBody.SetPasswordMinimumCharacterSetCount(&passwordMinimumCharacterSetCount) 
passwordRequiredType := graphmodels.ALPHANUMERIC_REQUIREDPASSWORDTYPE 
requestBody.SetPasswordRequiredType(&passwordRequiredType) 
passwordPreviousPasswordBlockCount := int32(2)
requestBody.SetPasswordPreviousPasswordBlockCount(&passwordPreviousPasswordBlockCount) 
requireHealthyDeviceReport := true
requestBody.SetRequireHealthyDeviceReport(&requireHealthyDeviceReport) 
osMinimumVersion := "Os Minimum Version value"
requestBody.SetOsMinimumVersion(&osMinimumVersion) 
osMaximumVersion := "Os Maximum Version value"
requestBody.SetOsMaximumVersion(&osMaximumVersion) 
mobileOsMinimumVersion := "Mobile Os Minimum Version value"
requestBody.SetMobileOsMinimumVersion(&mobileOsMinimumVersion) 
mobileOsMaximumVersion := "Mobile Os Maximum Version value"
requestBody.SetMobileOsMaximumVersion(&mobileOsMaximumVersion) 
earlyLaunchAntiMalwareDriverEnabled := true
requestBody.SetEarlyLaunchAntiMalwareDriverEnabled(&earlyLaunchAntiMalwareDriverEnabled) 
bitLockerEnabled := true
requestBody.SetBitLockerEnabled(&bitLockerEnabled) 
secureBootEnabled := true
requestBody.SetSecureBootEnabled(&secureBootEnabled) 
codeIntegrityEnabled := true
requestBody.SetCodeIntegrityEnabled(&codeIntegrityEnabled) 
storageRequireEncryption := true
requestBody.SetStorageRequireEncryption(&storageRequireEncryption) 

deviceCompliancePolicies, err := graphClient.DeviceManagement().DeviceCompliancePolicies().ByDeviceCompliancePolicyId("deviceCompliancePolicy-id").Patch(context.Background(), requestBody, nil)


```
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
passwordMinimumLength := int32(5)
requestBody.SetPasswordMinimumLength(&passwordMinimumLength) 
passwordRequiredType := graphmodels.ALPHABETIC_ANDROIDREQUIREDPASSWORDTYPE 
requestBody.SetPasswordRequiredType(&passwordRequiredType) 
passwordMinutesOfInactivityBeforeLock := int32(5)
requestBody.SetPasswordMinutesOfInactivityBeforeLock(&passwordMinutesOfInactivityBeforeLock) 
passwordExpirationDays := int32(6)
requestBody.SetPasswordExpirationDays(&passwordExpirationDays) 
passwordPreviousPasswordBlockCount := int32(2)
requestBody.SetPasswordPreviousPasswordBlockCount(&passwordPreviousPasswordBlockCount) 
securityPreventInstallAppsFromUnknownSources := true
requestBody.SetSecurityPreventInstallAppsFromUnknownSources(&securityPreventInstallAppsFromUnknownSources) 
securityDisableUsbDebugging := true
requestBody.SetSecurityDisableUsbDebugging(&securityDisableUsbDebugging) 
securityRequireVerifyApps := true
requestBody.SetSecurityRequireVerifyApps(&securityRequireVerifyApps) 
deviceThreatProtectionEnabled := true
requestBody.SetDeviceThreatProtectionEnabled(&deviceThreatProtectionEnabled) 
deviceThreatProtectionRequiredSecurityLevel := graphmodels.SECURED_DEVICETHREATPROTECTIONLEVEL 
requestBody.SetDeviceThreatProtectionRequiredSecurityLevel(&deviceThreatProtectionRequiredSecurityLevel) 
securityBlockJailbrokenDevices := true
requestBody.SetSecurityBlockJailbrokenDevices(&securityBlockJailbrokenDevices) 
osMinimumVersion := "Os Minimum Version value"
requestBody.SetOsMinimumVersion(&osMinimumVersion) 
osMaximumVersion := "Os Maximum Version value"
requestBody.SetOsMaximumVersion(&osMaximumVersion) 
minAndroidSecurityPatchLevel := "Min Android Security Patch Level value"
requestBody.SetMinAndroidSecurityPatchLevel(&minAndroidSecurityPatchLevel) 
storageRequireEncryption := true
requestBody.SetStorageRequireEncryption(&storageRequireEncryption) 
securityRequireSafetyNetAttestationBasicIntegrity := true
requestBody.SetSecurityRequireSafetyNetAttestationBasicIntegrity(&securityRequireSafetyNetAttestationBasicIntegrity) 
securityRequireSafetyNetAttestationCertifiedDevice := true
requestBody.SetSecurityRequireSafetyNetAttestationCertifiedDevice(&securityRequireSafetyNetAttestationCertifiedDevice) 
securityRequireGooglePlayServices := true
requestBody.SetSecurityRequireGooglePlayServices(&securityRequireGooglePlayServices) 
securityRequireUpToDateSecurityProviders := true
requestBody.SetSecurityRequireUpToDateSecurityProviders(&securityRequireUpToDateSecurityProviders) 
securityRequireCompanyPortalAppIntegrity := true
requestBody.SetSecurityRequireCompanyPortalAppIntegrity(&securityRequireCompanyPortalAppIntegrity) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
deviceCompliancePolicies, err := graphClient.DeviceManagement().DeviceCompliancePolicies().ByDeviceCompliancePolicyId("deviceCompliancePolicy-id").Patch(context.Background(), requestBody, nil)


```
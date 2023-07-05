---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient, err := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewIosManagedAppProtection()
displayName := "Display Name value"
requestBody.SetDisplayName(&displayName) 
description := "Description value"
requestBody.SetDescription(&description) 
version := "Version value"
requestBody.SetVersion(&version) 
periodOfflineBeforeAccessCheck , err := abstractions.ParseISODuration("-PT17.1357909S")
requestBody.SetPeriodOfflineBeforeAccessCheck(&periodOfflineBeforeAccessCheck) 
periodOnlineBeforeAccessCheck , err := abstractions.ParseISODuration("PT35.0018757S")
requestBody.SetPeriodOnlineBeforeAccessCheck(&periodOnlineBeforeAccessCheck) 
allowedInboundDataTransferSources := graphmodels.MANAGEDAPPS_MANAGEDAPPDATATRANSFERLEVEL 
requestBody.SetAllowedInboundDataTransferSources(&allowedInboundDataTransferSources) 
allowedOutboundDataTransferDestinations := graphmodels.MANAGEDAPPS_MANAGEDAPPDATATRANSFERLEVEL 
requestBody.SetAllowedOutboundDataTransferDestinations(&allowedOutboundDataTransferDestinations) 
organizationalCredentialsRequired := true
requestBody.SetOrganizationalCredentialsRequired(&organizationalCredentialsRequired) 
allowedOutboundClipboardSharingLevel := graphmodels.MANAGEDAPPSWITHPASTEIN_MANAGEDAPPCLIPBOARDSHARINGLEVEL 
requestBody.SetAllowedOutboundClipboardSharingLevel(&allowedOutboundClipboardSharingLevel) 
dataBackupBlocked := true
requestBody.SetDataBackupBlocked(&dataBackupBlocked) 
deviceComplianceRequired := true
requestBody.SetDeviceComplianceRequired(&deviceComplianceRequired) 
managedBrowserToOpenLinksRequired := true
requestBody.SetManagedBrowserToOpenLinksRequired(&managedBrowserToOpenLinksRequired) 
saveAsBlocked := true
requestBody.SetSaveAsBlocked(&saveAsBlocked) 
periodOfflineBeforeWipeIsEnforced , err := abstractions.ParseISODuration("-PT3M22.1587532S")
requestBody.SetPeriodOfflineBeforeWipeIsEnforced(&periodOfflineBeforeWipeIsEnforced) 
pinRequired := true
requestBody.SetPinRequired(&pinRequired) 
maximumPinRetries := int32(1)
requestBody.SetMaximumPinRetries(&maximumPinRetries) 
simplePinBlocked := true
requestBody.SetSimplePinBlocked(&simplePinBlocked) 
minimumPinLength := int32(0)
requestBody.SetMinimumPinLength(&minimumPinLength) 
pinCharacterSet := graphmodels.ALPHANUMERICANDSYMBOL_MANAGEDAPPPINCHARACTERSET 
requestBody.SetPinCharacterSet(&pinCharacterSet) 
periodBeforePinReset , err := abstractions.ParseISODuration("PT3M29.6631862S")
requestBody.SetPeriodBeforePinReset(&periodBeforePinReset) 
allowedDataStorageLocations := []graphmodels.ManagedAppDataStorageLocationable {
	managedAppDataStorageLocation := graphmodels.SHAREPOINT_MANAGEDAPPDATASTORAGELOCATION 
	requestBody.SetManagedAppDataStorageLocation(&managedAppDataStorageLocation)
}
requestBody.SetAllowedDataStorageLocations(allowedDataStorageLocations)
contactSyncBlocked := true
requestBody.SetContactSyncBlocked(&contactSyncBlocked) 
printBlocked := true
requestBody.SetPrintBlocked(&printBlocked) 
fingerprintBlocked := true
requestBody.SetFingerprintBlocked(&fingerprintBlocked) 
disableAppPinIfDevicePinIsSet := true
requestBody.SetDisableAppPinIfDevicePinIsSet(&disableAppPinIfDevicePinIsSet) 
minimumRequiredOsVersion := "Minimum Required Os Version value"
requestBody.SetMinimumRequiredOsVersion(&minimumRequiredOsVersion) 
minimumWarningOsVersion := "Minimum Warning Os Version value"
requestBody.SetMinimumWarningOsVersion(&minimumWarningOsVersion) 
minimumRequiredAppVersion := "Minimum Required App Version value"
requestBody.SetMinimumRequiredAppVersion(&minimumRequiredAppVersion) 
minimumWarningAppVersion := "Minimum Warning App Version value"
requestBody.SetMinimumWarningAppVersion(&minimumWarningAppVersion) 
managedBrowser := graphmodels.MICROSOFTEDGE_MANAGEDBROWSERTYPE 
requestBody.SetManagedBrowser(&managedBrowser) 
isAssigned := true
requestBody.SetIsAssigned(&isAssigned) 
appDataEncryptionType := graphmodels.AFTERDEVICERESTART_MANAGEDAPPDATAENCRYPTIONTYPE 
requestBody.SetAppDataEncryptionType(&appDataEncryptionType) 
minimumRequiredSdkVersion := "Minimum Required Sdk Version value"
requestBody.SetMinimumRequiredSdkVersion(&minimumRequiredSdkVersion) 
deployedAppCount := int32(0)
requestBody.SetDeployedAppCount(&deployedAppCount) 
faceIdBlocked := true
requestBody.SetFaceIdBlocked(&faceIdBlocked) 
customBrowserProtocol := "Custom Browser Protocol value"
requestBody.SetCustomBrowserProtocol(&customBrowserProtocol) 

result, err := graphClient.DeviceAppManagement().IosManagedAppProtections().ByIosManagedAppProtectionId("iosManagedAppProtection-id").Patch(context.Background(), requestBody, nil)


```
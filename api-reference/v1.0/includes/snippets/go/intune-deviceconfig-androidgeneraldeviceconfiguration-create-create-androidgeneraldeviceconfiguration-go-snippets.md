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


requestBody := graphmodels.NewDeviceConfiguration()
description := "Description value"
requestBody.SetDescription(&description) 
displayName := "Display Name value"
requestBody.SetDisplayName(&displayName) 
version := int32(7)
requestBody.SetVersion(&version) 
appsBlockClipboardSharing := true
requestBody.SetAppsBlockClipboardSharing(&appsBlockClipboardSharing) 
appsBlockCopyPaste := true
requestBody.SetAppsBlockCopyPaste(&appsBlockCopyPaste) 
appsBlockYouTube := true
requestBody.SetAppsBlockYouTube(&appsBlockYouTube) 
bluetoothBlocked := true
requestBody.SetBluetoothBlocked(&bluetoothBlocked) 
cameraBlocked := true
requestBody.SetCameraBlocked(&cameraBlocked) 
cellularBlockDataRoaming := true
requestBody.SetCellularBlockDataRoaming(&cellularBlockDataRoaming) 
cellularBlockMessaging := true
requestBody.SetCellularBlockMessaging(&cellularBlockMessaging) 
cellularBlockVoiceRoaming := true
requestBody.SetCellularBlockVoiceRoaming(&cellularBlockVoiceRoaming) 
cellularBlockWiFiTethering := true
requestBody.SetCellularBlockWiFiTethering(&cellularBlockWiFiTethering) 


appListItem := graphmodels.NewAppListItem()
name := "Name value"
appListItem.SetName(&name) 
publisher := "Publisher value"
appListItem.SetPublisher(&publisher) 
appStoreUrl := "https://example.com/appStoreUrl/"
appListItem.SetAppStoreUrl(&appStoreUrl) 
appId := "App Id value"
appListItem.SetAppId(&appId) 

compliantAppsList := []graphmodels.AppListItemable {
	appListItem,
}
requestBody.SetCompliantAppsList(compliantAppsList)
compliantAppListType := graphmodels.APPSINLISTCOMPLIANT_APPLISTTYPE 
requestBody.SetCompliantAppListType(&compliantAppListType) 
diagnosticDataBlockSubmission := true
requestBody.SetDiagnosticDataBlockSubmission(&diagnosticDataBlockSubmission) 
locationServicesBlocked := true
requestBody.SetLocationServicesBlocked(&locationServicesBlocked) 
googleAccountBlockAutoSync := true
requestBody.SetGoogleAccountBlockAutoSync(&googleAccountBlockAutoSync) 
googlePlayStoreBlocked := true
requestBody.SetGooglePlayStoreBlocked(&googlePlayStoreBlocked) 
kioskModeBlockSleepButton := true
requestBody.SetKioskModeBlockSleepButton(&kioskModeBlockSleepButton) 
kioskModeBlockVolumeButtons := true
requestBody.SetKioskModeBlockVolumeButtons(&kioskModeBlockVolumeButtons) 


appListItem := graphmodels.NewAppListItem()
name := "Name value"
appListItem.SetName(&name) 
publisher := "Publisher value"
appListItem.SetPublisher(&publisher) 
appStoreUrl := "https://example.com/appStoreUrl/"
appListItem.SetAppStoreUrl(&appStoreUrl) 
appId := "App Id value"
appListItem.SetAppId(&appId) 

kioskModeApps := []graphmodels.AppListItemable {
	appListItem,
}
requestBody.SetKioskModeApps(kioskModeApps)
nfcBlocked := true
requestBody.SetNfcBlocked(&nfcBlocked) 
passwordBlockFingerprintUnlock := true
requestBody.SetPasswordBlockFingerprintUnlock(&passwordBlockFingerprintUnlock) 
passwordBlockTrustAgents := true
requestBody.SetPasswordBlockTrustAgents(&passwordBlockTrustAgents) 
passwordExpirationDays := int32(6)
requestBody.SetPasswordExpirationDays(&passwordExpirationDays) 
passwordMinimumLength := int32(5)
requestBody.SetPasswordMinimumLength(&passwordMinimumLength) 
passwordMinutesOfInactivityBeforeScreenTimeout := int32(14)
requestBody.SetPasswordMinutesOfInactivityBeforeScreenTimeout(&passwordMinutesOfInactivityBeforeScreenTimeout) 
passwordPreviousPasswordBlockCount := int32(2)
requestBody.SetPasswordPreviousPasswordBlockCount(&passwordPreviousPasswordBlockCount) 
passwordSignInFailureCountBeforeFactoryReset := int32(12)
requestBody.SetPasswordSignInFailureCountBeforeFactoryReset(&passwordSignInFailureCountBeforeFactoryReset) 
passwordRequiredType := graphmodels.ALPHABETIC_ANDROIDREQUIREDPASSWORDTYPE 
requestBody.SetPasswordRequiredType(&passwordRequiredType) 
passwordRequired := true
requestBody.SetPasswordRequired(&passwordRequired) 
powerOffBlocked := true
requestBody.SetPowerOffBlocked(&powerOffBlocked) 
factoryResetBlocked := true
requestBody.SetFactoryResetBlocked(&factoryResetBlocked) 
screenCaptureBlocked := true
requestBody.SetScreenCaptureBlocked(&screenCaptureBlocked) 
deviceSharingAllowed := true
requestBody.SetDeviceSharingAllowed(&deviceSharingAllowed) 
storageBlockGoogleBackup := true
requestBody.SetStorageBlockGoogleBackup(&storageBlockGoogleBackup) 
storageBlockRemovableStorage := true
requestBody.SetStorageBlockRemovableStorage(&storageBlockRemovableStorage) 
storageRequireDeviceEncryption := true
requestBody.SetStorageRequireDeviceEncryption(&storageRequireDeviceEncryption) 
storageRequireRemovableStorageEncryption := true
requestBody.SetStorageRequireRemovableStorageEncryption(&storageRequireRemovableStorageEncryption) 
voiceAssistantBlocked := true
requestBody.SetVoiceAssistantBlocked(&voiceAssistantBlocked) 
voiceDialingBlocked := true
requestBody.SetVoiceDialingBlocked(&voiceDialingBlocked) 
webBrowserBlockPopups := true
requestBody.SetWebBrowserBlockPopups(&webBrowserBlockPopups) 
webBrowserBlockAutofill := true
requestBody.SetWebBrowserBlockAutofill(&webBrowserBlockAutofill) 
webBrowserBlockJavaScript := true
requestBody.SetWebBrowserBlockJavaScript(&webBrowserBlockJavaScript) 
webBrowserBlocked := true
requestBody.SetWebBrowserBlocked(&webBrowserBlocked) 
webBrowserCookieSettings := graphmodels.BLOCKALWAYS_WEBBROWSERCOOKIESETTINGS 
requestBody.SetWebBrowserCookieSettings(&webBrowserCookieSettings) 
wiFiBlocked := true
requestBody.SetWiFiBlocked(&wiFiBlocked) 


appListItem := graphmodels.NewAppListItem()
name := "Name value"
appListItem.SetName(&name) 
publisher := "Publisher value"
appListItem.SetPublisher(&publisher) 
appStoreUrl := "https://example.com/appStoreUrl/"
appListItem.SetAppStoreUrl(&appStoreUrl) 
appId := "App Id value"
appListItem.SetAppId(&appId) 

appsInstallAllowList := []graphmodels.AppListItemable {
	appListItem,
}
requestBody.SetAppsInstallAllowList(appsInstallAllowList)


appListItem := graphmodels.NewAppListItem()
name := "Name value"
appListItem.SetName(&name) 
publisher := "Publisher value"
appListItem.SetPublisher(&publisher) 
appStoreUrl := "https://example.com/appStoreUrl/"
appListItem.SetAppStoreUrl(&appStoreUrl) 
appId := "App Id value"
appListItem.SetAppId(&appId) 

appsLaunchBlockList := []graphmodels.AppListItemable {
	appListItem,
}
requestBody.SetAppsLaunchBlockList(appsLaunchBlockList)


appListItem := graphmodels.NewAppListItem()
name := "Name value"
appListItem.SetName(&name) 
publisher := "Publisher value"
appListItem.SetPublisher(&publisher) 
appStoreUrl := "https://example.com/appStoreUrl/"
appListItem.SetAppStoreUrl(&appStoreUrl) 
appId := "App Id value"
appListItem.SetAppId(&appId) 

appsHideList := []graphmodels.AppListItemable {
	appListItem,
}
requestBody.SetAppsHideList(appsHideList)
securityRequireVerifyApps := true
requestBody.SetSecurityRequireVerifyApps(&securityRequireVerifyApps) 

result, err := graphClient.DeviceManagement().DeviceConfigurations().Post(context.Background(), requestBody, nil)


```
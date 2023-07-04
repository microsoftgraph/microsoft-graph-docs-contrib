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
accountsBlockAddingNonMicrosoftAccountEmail := true
requestBody.SetAccountsBlockAddingNonMicrosoftAccountEmail(&accountsBlockAddingNonMicrosoftAccountEmail) 
applyOnlyToWindows81 := true
requestBody.SetApplyOnlyToWindows81(&applyOnlyToWindows81) 
browserBlockAutofill := true
requestBody.SetBrowserBlockAutofill(&browserBlockAutofill) 
browserBlockAutomaticDetectionOfIntranetSites := true
requestBody.SetBrowserBlockAutomaticDetectionOfIntranetSites(&browserBlockAutomaticDetectionOfIntranetSites) 
browserBlockEnterpriseModeAccess := true
requestBody.SetBrowserBlockEnterpriseModeAccess(&browserBlockEnterpriseModeAccess) 
browserBlockJavaScript := true
requestBody.SetBrowserBlockJavaScript(&browserBlockJavaScript) 
browserBlockPlugins := true
requestBody.SetBrowserBlockPlugins(&browserBlockPlugins) 
browserBlockPopups := true
requestBody.SetBrowserBlockPopups(&browserBlockPopups) 
browserBlockSendingDoNotTrackHeader := true
requestBody.SetBrowserBlockSendingDoNotTrackHeader(&browserBlockSendingDoNotTrackHeader) 
browserBlockSingleWordEntryOnIntranetSites := true
requestBody.SetBrowserBlockSingleWordEntryOnIntranetSites(&browserBlockSingleWordEntryOnIntranetSites) 
browserRequireSmartScreen := true
requestBody.SetBrowserRequireSmartScreen(&browserRequireSmartScreen) 
browserEnterpriseModeSiteListLocation := "Browser Enterprise Mode Site List Location value"
requestBody.SetBrowserEnterpriseModeSiteListLocation(&browserEnterpriseModeSiteListLocation) 
browserInternetSecurityLevel := graphmodels.MEDIUM_INTERNETSITESECURITYLEVEL 
requestBody.SetBrowserInternetSecurityLevel(&browserInternetSecurityLevel) 
browserIntranetSecurityLevel := graphmodels.LOW_SITESECURITYLEVEL 
requestBody.SetBrowserIntranetSecurityLevel(&browserIntranetSecurityLevel) 
browserLoggingReportLocation := "Browser Logging Report Location value"
requestBody.SetBrowserLoggingReportLocation(&browserLoggingReportLocation) 
browserRequireHighSecurityForRestrictedSites := true
requestBody.SetBrowserRequireHighSecurityForRestrictedSites(&browserRequireHighSecurityForRestrictedSites) 
browserRequireFirewall := true
requestBody.SetBrowserRequireFirewall(&browserRequireFirewall) 
browserRequireFraudWarning := true
requestBody.SetBrowserRequireFraudWarning(&browserRequireFraudWarning) 
browserTrustedSitesSecurityLevel := graphmodels.LOW_SITESECURITYLEVEL 
requestBody.SetBrowserTrustedSitesSecurityLevel(&browserTrustedSitesSecurityLevel) 
cellularBlockDataRoaming := true
requestBody.SetCellularBlockDataRoaming(&cellularBlockDataRoaming) 
diagnosticsBlockDataSubmission := true
requestBody.SetDiagnosticsBlockDataSubmission(&diagnosticsBlockDataSubmission) 
passwordBlockPicturePasswordAndPin := true
requestBody.SetPasswordBlockPicturePasswordAndPin(&passwordBlockPicturePasswordAndPin) 
passwordExpirationDays := int32(6)
requestBody.SetPasswordExpirationDays(&passwordExpirationDays) 
passwordMinimumLength := int32(5)
requestBody.SetPasswordMinimumLength(&passwordMinimumLength) 
passwordMinutesOfInactivityBeforeScreenTimeout := int32(14)
requestBody.SetPasswordMinutesOfInactivityBeforeScreenTimeout(&passwordMinutesOfInactivityBeforeScreenTimeout) 
passwordMinimumCharacterSetCount := int32(0)
requestBody.SetPasswordMinimumCharacterSetCount(&passwordMinimumCharacterSetCount) 
passwordPreviousPasswordBlockCount := int32(2)
requestBody.SetPasswordPreviousPasswordBlockCount(&passwordPreviousPasswordBlockCount) 
passwordRequiredType := graphmodels.ALPHANUMERIC_REQUIREDPASSWORDTYPE 
requestBody.SetPasswordRequiredType(&passwordRequiredType) 
passwordSignInFailureCountBeforeFactoryReset := int32(12)
requestBody.SetPasswordSignInFailureCountBeforeFactoryReset(&passwordSignInFailureCountBeforeFactoryReset) 
storageRequireDeviceEncryption := true
requestBody.SetStorageRequireDeviceEncryption(&storageRequireDeviceEncryption) 
updatesRequireAutomaticUpdates := true
requestBody.SetUpdatesRequireAutomaticUpdates(&updatesRequireAutomaticUpdates) 
userAccountControlSettings := graphmodels.ALWAYSNOTIFY_WINDOWSUSERACCOUNTCONTROLSETTINGS 
requestBody.SetUserAccountControlSettings(&userAccountControlSettings) 
workFoldersUrl := "https://example.com/workFoldersUrl/"
requestBody.SetWorkFoldersUrl(&workFoldersUrl) 

result, err := graphClient.DeviceManagement().DeviceConfigurations().Post(context.Background(), requestBody, nil)


```
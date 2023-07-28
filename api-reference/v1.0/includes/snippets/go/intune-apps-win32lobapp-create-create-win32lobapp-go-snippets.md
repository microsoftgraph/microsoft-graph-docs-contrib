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


requestBody := graphmodels.NewMobileApp()
displayName := "Display Name value"
requestBody.SetDisplayName(&displayName) 
description := "Description value"
requestBody.SetDescription(&description) 
publisher := "Publisher value"
requestBody.SetPublisher(&publisher) 
largeIcon := graphmodels.NewMimeContent()
type := "Type value"
largeIcon.SetType(&type) 
value := []byte("dmFsdWU=")
largeIcon.SetValue(&value) 
requestBody.SetLargeIcon(largeIcon)
isFeatured := true
requestBody.SetIsFeatured(&isFeatured) 
privacyInformationUrl := "https://example.com/privacyInformationUrl/"
requestBody.SetPrivacyInformationUrl(&privacyInformationUrl) 
informationUrl := "https://example.com/informationUrl/"
requestBody.SetInformationUrl(&informationUrl) 
owner := "Owner value"
requestBody.SetOwner(&owner) 
developer := "Developer value"
requestBody.SetDeveloper(&developer) 
notes := "Notes value"
requestBody.SetNotes(&notes) 
publishingState := graphmodels.PROCESSING_MOBILEAPPPUBLISHINGSTATE 
requestBody.SetPublishingState(&publishingState) 
committedContentVersion := "Committed Content Version value"
requestBody.SetCommittedContentVersion(&committedContentVersion) 
fileName := "File Name value"
requestBody.SetFileName(&fileName) 
size := int64(4)
requestBody.SetSize(&size) 
installCommandLine := "Install Command Line value"
requestBody.SetInstallCommandLine(&installCommandLine) 
uninstallCommandLine := "Uninstall Command Line value"
requestBody.SetUninstallCommandLine(&uninstallCommandLine) 
applicableArchitectures := graphmodels.X86_WINDOWSARCHITECTURE 
requestBody.SetApplicableArchitectures(&applicableArchitectures) 
minimumFreeDiskSpaceInMB := int32(8)
requestBody.SetMinimumFreeDiskSpaceInMB(&minimumFreeDiskSpaceInMB) 
minimumMemoryInMB := int32(1)
requestBody.SetMinimumMemoryInMB(&minimumMemoryInMB) 
minimumNumberOfProcessors := int32(9)
requestBody.SetMinimumNumberOfProcessors(&minimumNumberOfProcessors) 
minimumCpuSpeedInMHz := int32(4)
requestBody.SetMinimumCpuSpeedInMHz(&minimumCpuSpeedInMHz) 


win32LobAppRule := graphmodels.NewWin32LobAppRegistryRule()
ruleType := graphmodels.REQUIREMENT_WIN32LOBAPPRULETYPE 
win32LobAppRule.SetRuleType(&ruleType) 
check32BitOn64System := true
win32LobAppRule.SetCheck32BitOn64System(&check32BitOn64System) 
keyPath := "Key Path value"
win32LobAppRule.SetKeyPath(&keyPath) 
valueName := "Value Name value"
win32LobAppRule.SetValueName(&valueName) 
operationType := graphmodels.EXISTS_WIN32LOBAPPREGISTRYRULEOPERATIONTYPE 
win32LobAppRule.SetOperationType(&operationType) 
operator := graphmodels.EQUAL_WIN32LOBAPPRULEOPERATOR 
win32LobAppRule.SetOperator(&operator) 
comparisonValue := "Comparison Value value"
win32LobAppRule.SetComparisonValue(&comparisonValue) 

rules := []graphmodels.Win32LobAppRuleable {
	win32LobAppRule,
}
requestBody.SetRules(rules)
installExperience := graphmodels.NewWin32LobAppInstallExperience()
runAsAccount := graphmodels.USER_RUNASACCOUNTTYPE 
installExperience.SetRunAsAccount(&runAsAccount) 
deviceRestartBehavior := graphmodels.ALLOW_WIN32LOBAPPRESTARTBEHAVIOR 
installExperience.SetDeviceRestartBehavior(&deviceRestartBehavior) 
requestBody.SetInstallExperience(installExperience)


win32LobAppReturnCode := graphmodels.NewWin32LobAppReturnCode()
returnCode := int32(10)
win32LobAppReturnCode.SetReturnCode(&returnCode) 
type := graphmodels.SUCCESS_WIN32LOBAPPRETURNCODETYPE 
win32LobAppReturnCode.SetType(&type) 

returnCodes := []graphmodels.Win32LobAppReturnCodeable {
	win32LobAppReturnCode,
}
requestBody.SetReturnCodes(returnCodes)
msiInformation := graphmodels.NewWin32LobAppMsiInformation()
productCode := "Product Code value"
msiInformation.SetProductCode(&productCode) 
productVersion := "Product Version value"
msiInformation.SetProductVersion(&productVersion) 
upgradeCode := "Upgrade Code value"
msiInformation.SetUpgradeCode(&upgradeCode) 
requiresReboot := true
msiInformation.SetRequiresReboot(&requiresReboot) 
packageType := graphmodels.PERUSER_WIN32LOBAPPMSIPACKAGETYPE 
msiInformation.SetPackageType(&packageType) 
productName := "Product Name value"
msiInformation.SetProductName(&productName) 
publisher := "Publisher value"
msiInformation.SetPublisher(&publisher) 
requestBody.SetMsiInformation(msiInformation)
setupFilePath := "Setup File Path value"
requestBody.SetSetupFilePath(&setupFilePath) 
minimumSupportedWindowsRelease := "Minimum Supported Windows Release value"
requestBody.SetMinimumSupportedWindowsRelease(&minimumSupportedWindowsRelease) 

result, err := graphClient.DeviceAppManagement().MobileApps().Post(context.Background(), requestBody, nil)


```
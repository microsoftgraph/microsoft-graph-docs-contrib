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
assetTagTemplate := "Asset Tag Template value"
requestBody.SetAssetTagTemplate(&assetTagTemplate) 
lockScreenFootnote := "Lock Screen Footnote value"
requestBody.SetLockScreenFootnote(&lockScreenFootnote) 


iosHomeScreenItem := graphmodels.NewIosHomeScreenFolder()
displayName := "Display Name value"
iosHomeScreenItem.SetDisplayName(&displayName) 


iosHomeScreenFolderPage := graphmodels.NewIosHomeScreenFolderPage()
displayName := "Display Name value"
iosHomeScreenFolderPage.SetDisplayName(&displayName) 


iosHomeScreenApp := graphmodels.NewIosHomeScreenApp()
displayName := "Display Name value"
iosHomeScreenApp.SetDisplayName(&displayName) 
bundleID := "Bundle ID value"
iosHomeScreenApp.SetBundleID(&bundleID) 

apps := []graphmodels.IosHomeScreenAppable {
	iosHomeScreenApp,
}
iosHomeScreenFolderPage.SetApps(apps)

pages := []graphmodels.IosHomeScreenFolderPageable {
	iosHomeScreenFolderPage,
}
iosHomeScreenItem.SetPages(pages)

homeScreenDockIcons := []graphmodels.IosHomeScreenItemable {
	iosHomeScreenItem,
}
requestBody.SetHomeScreenDockIcons(homeScreenDockIcons)


iosHomeScreenPage := graphmodels.NewIosHomeScreenPage()
displayName := "Display Name value"
iosHomeScreenPage.SetDisplayName(&displayName) 


iosHomeScreenItem := graphmodels.NewIosHomeScreenFolder()
displayName := "Display Name value"
iosHomeScreenItem.SetDisplayName(&displayName) 


iosHomeScreenFolderPage := graphmodels.NewIosHomeScreenFolderPage()
displayName := "Display Name value"
iosHomeScreenFolderPage.SetDisplayName(&displayName) 


iosHomeScreenApp := graphmodels.NewIosHomeScreenApp()
displayName := "Display Name value"
iosHomeScreenApp.SetDisplayName(&displayName) 
bundleID := "Bundle ID value"
iosHomeScreenApp.SetBundleID(&bundleID) 

apps := []graphmodels.IosHomeScreenAppable {
	iosHomeScreenApp,
}
iosHomeScreenFolderPage.SetApps(apps)

pages := []graphmodels.IosHomeScreenFolderPageable {
	iosHomeScreenFolderPage,
}
iosHomeScreenItem.SetPages(pages)

icons := []graphmodels.IosHomeScreenItemable {
	iosHomeScreenItem,
}
iosHomeScreenPage.SetIcons(icons)

homeScreenPages := []graphmodels.IosHomeScreenPageable {
	iosHomeScreenPage,
}
requestBody.SetHomeScreenPages(homeScreenPages)


iosNotificationSettings := graphmodels.NewIosNotificationSettings()
bundleID := "Bundle ID value"
iosNotificationSettings.SetBundleID(&bundleID) 
appName := "App Name value"
iosNotificationSettings.SetAppName(&appName) 
publisher := "Publisher value"
iosNotificationSettings.SetPublisher(&publisher) 
enabled := true
iosNotificationSettings.SetEnabled(&enabled) 
showInNotificationCenter := true
iosNotificationSettings.SetShowInNotificationCenter(&showInNotificationCenter) 
showOnLockScreen := true
iosNotificationSettings.SetShowOnLockScreen(&showOnLockScreen) 
alertType := graphmodels.BANNER_IOSNOTIFICATIONALERTTYPE 
iosNotificationSettings.SetAlertType(&alertType) 
badgesEnabled := true
iosNotificationSettings.SetBadgesEnabled(&badgesEnabled) 
soundsEnabled := true
iosNotificationSettings.SetSoundsEnabled(&soundsEnabled) 

notificationSettings := []graphmodels.IosNotificationSettingsable {
	iosNotificationSettings,
}
requestBody.SetNotificationSettings(notificationSettings)

result, err := graphClient.DeviceManagement().DeviceConfigurations().ByDeviceConfigurationId("deviceConfiguration-id").Patch(context.Background(), requestBody, nil)


```
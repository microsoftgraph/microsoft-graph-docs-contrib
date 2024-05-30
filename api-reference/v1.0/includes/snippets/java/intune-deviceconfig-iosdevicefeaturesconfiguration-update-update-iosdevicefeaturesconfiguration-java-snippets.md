---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

IosDeviceFeaturesConfiguration deviceConfiguration = new IosDeviceFeaturesConfiguration();
deviceConfiguration.setOdataType("#microsoft.graph.iosDeviceFeaturesConfiguration");
deviceConfiguration.setDescription("Description value");
deviceConfiguration.setDisplayName("Display Name value");
deviceConfiguration.setVersion(7);
deviceConfiguration.setAssetTagTemplate("Asset Tag Template value");
deviceConfiguration.setLockScreenFootnote("Lock Screen Footnote value");
LinkedList<IosHomeScreenItem> homeScreenDockIcons = new LinkedList<IosHomeScreenItem>();
IosHomeScreenFolder iosHomeScreenItem = new IosHomeScreenFolder();
iosHomeScreenItem.setOdataType("microsoft.graph.iosHomeScreenFolder");
iosHomeScreenItem.setDisplayName("Display Name value");
LinkedList<IosHomeScreenFolderPage> pages = new LinkedList<IosHomeScreenFolderPage>();
IosHomeScreenFolderPage iosHomeScreenFolderPage = new IosHomeScreenFolderPage();
iosHomeScreenFolderPage.setOdataType("microsoft.graph.iosHomeScreenFolderPage");
iosHomeScreenFolderPage.setDisplayName("Display Name value");
LinkedList<IosHomeScreenApp> apps = new LinkedList<IosHomeScreenApp>();
IosHomeScreenApp iosHomeScreenApp = new IosHomeScreenApp();
iosHomeScreenApp.setOdataType("microsoft.graph.iosHomeScreenApp");
iosHomeScreenApp.setDisplayName("Display Name value");
iosHomeScreenApp.setBundleID("Bundle ID value");
apps.add(iosHomeScreenApp);
iosHomeScreenFolderPage.setApps(apps);
pages.add(iosHomeScreenFolderPage);
iosHomeScreenItem.setPages(pages);
homeScreenDockIcons.add(iosHomeScreenItem);
deviceConfiguration.setHomeScreenDockIcons(homeScreenDockIcons);
LinkedList<IosHomeScreenPage> homeScreenPages = new LinkedList<IosHomeScreenPage>();
IosHomeScreenPage iosHomeScreenPage = new IosHomeScreenPage();
iosHomeScreenPage.setOdataType("microsoft.graph.iosHomeScreenPage");
iosHomeScreenPage.setDisplayName("Display Name value");
LinkedList<IosHomeScreenItem> icons = new LinkedList<IosHomeScreenItem>();
IosHomeScreenFolder iosHomeScreenItem1 = new IosHomeScreenFolder();
iosHomeScreenItem1.setOdataType("microsoft.graph.iosHomeScreenFolder");
iosHomeScreenItem1.setDisplayName("Display Name value");
LinkedList<IosHomeScreenFolderPage> pages1 = new LinkedList<IosHomeScreenFolderPage>();
IosHomeScreenFolderPage iosHomeScreenFolderPage1 = new IosHomeScreenFolderPage();
iosHomeScreenFolderPage1.setOdataType("microsoft.graph.iosHomeScreenFolderPage");
iosHomeScreenFolderPage1.setDisplayName("Display Name value");
LinkedList<IosHomeScreenApp> apps1 = new LinkedList<IosHomeScreenApp>();
IosHomeScreenApp iosHomeScreenApp1 = new IosHomeScreenApp();
iosHomeScreenApp1.setOdataType("microsoft.graph.iosHomeScreenApp");
iosHomeScreenApp1.setDisplayName("Display Name value");
iosHomeScreenApp1.setBundleID("Bundle ID value");
apps1.add(iosHomeScreenApp1);
iosHomeScreenFolderPage1.setApps(apps1);
pages1.add(iosHomeScreenFolderPage1);
iosHomeScreenItem1.setPages(pages1);
icons.add(iosHomeScreenItem1);
iosHomeScreenPage.setIcons(icons);
homeScreenPages.add(iosHomeScreenPage);
deviceConfiguration.setHomeScreenPages(homeScreenPages);
LinkedList<IosNotificationSettings> notificationSettings = new LinkedList<IosNotificationSettings>();
IosNotificationSettings iosNotificationSettings = new IosNotificationSettings();
iosNotificationSettings.setOdataType("microsoft.graph.iosNotificationSettings");
iosNotificationSettings.setBundleID("Bundle ID value");
iosNotificationSettings.setAppName("App Name value");
iosNotificationSettings.setPublisher("Publisher value");
iosNotificationSettings.setEnabled(true);
iosNotificationSettings.setShowInNotificationCenter(true);
iosNotificationSettings.setShowOnLockScreen(true);
iosNotificationSettings.setAlertType(IosNotificationAlertType.Banner);
iosNotificationSettings.setBadgesEnabled(true);
iosNotificationSettings.setSoundsEnabled(true);
notificationSettings.add(iosNotificationSettings);
deviceConfiguration.setNotificationSettings(notificationSettings);
DeviceConfiguration result = graphClient.deviceManagement().deviceConfigurations().byDeviceConfigurationId("{deviceConfiguration-id}").patch(deviceConfiguration);


```
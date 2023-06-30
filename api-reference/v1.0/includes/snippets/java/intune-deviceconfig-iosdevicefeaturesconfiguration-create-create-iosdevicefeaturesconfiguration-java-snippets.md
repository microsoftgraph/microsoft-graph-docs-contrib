---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IosDeviceFeaturesConfiguration deviceConfiguration = new IosDeviceFeaturesConfiguration();
deviceConfiguration.description = "Description value";
deviceConfiguration.displayName = "Display Name value";
deviceConfiguration.version = 7;
deviceConfiguration.assetTagTemplate = "Asset Tag Template value";
deviceConfiguration.lockScreenFootnote = "Lock Screen Footnote value";
LinkedList<IosHomeScreenItem> homeScreenDockIconsList = new LinkedList<IosHomeScreenItem>();
IosHomeScreenFolder homeScreenDockIcons = new IosHomeScreenFolder();
homeScreenDockIcons.displayName = "Display Name value";
LinkedList<IosHomeScreenFolderPage> pagesList = new LinkedList<IosHomeScreenFolderPage>();
IosHomeScreenFolderPage pages = new IosHomeScreenFolderPage();
pages.displayName = "Display Name value";
LinkedList<IosHomeScreenApp> appsList = new LinkedList<IosHomeScreenApp>();
IosHomeScreenApp apps = new IosHomeScreenApp();
apps.displayName = "Display Name value";
apps.bundleID = "Bundle ID value";
appsList.add(apps);
pages.apps = appsList;
pagesList.add(pages);
homeScreenDockIcons.pages = pagesList;
homeScreenDockIconsList.add(homeScreenDockIcons);
deviceConfiguration.homeScreenDockIcons = homeScreenDockIconsList;
LinkedList<IosHomeScreenPage> homeScreenPagesList = new LinkedList<IosHomeScreenPage>();
IosHomeScreenPage homeScreenPages = new IosHomeScreenPage();
homeScreenPages.displayName = "Display Name value";
LinkedList<IosHomeScreenItem> iconsList = new LinkedList<IosHomeScreenItem>();
IosHomeScreenFolder icons = new IosHomeScreenFolder();
icons.displayName = "Display Name value";
LinkedList<IosHomeScreenFolderPage> pagesList1 = new LinkedList<IosHomeScreenFolderPage>();
IosHomeScreenFolderPage pages1 = new IosHomeScreenFolderPage();
pages1.displayName = "Display Name value";
LinkedList<IosHomeScreenApp> appsList1 = new LinkedList<IosHomeScreenApp>();
IosHomeScreenApp apps1 = new IosHomeScreenApp();
apps1.displayName = "Display Name value";
apps1.bundleID = "Bundle ID value";
appsList1.add(apps1);
pages1.apps = appsList1;
pagesList1.add(pages1);
icons.pages = pagesList1;
iconsList.add(icons);
homeScreenPages.icons = iconsList;
homeScreenPagesList.add(homeScreenPages);
deviceConfiguration.homeScreenPages = homeScreenPagesList;
LinkedList<IosNotificationSettings> notificationSettingsList = new LinkedList<IosNotificationSettings>();
IosNotificationSettings notificationSettings = new IosNotificationSettings();
notificationSettings.bundleID = "Bundle ID value";
notificationSettings.appName = "App Name value";
notificationSettings.publisher = "Publisher value";
notificationSettings.enabled = true;
notificationSettings.showInNotificationCenter = true;
notificationSettings.showOnLockScreen = true;
notificationSettings.alertType = IosNotificationAlertType.BANNER;
notificationSettings.badgesEnabled = true;
notificationSettings.soundsEnabled = true;
notificationSettingsList.add(notificationSettings);
deviceConfiguration.notificationSettings = notificationSettingsList;

graphClient.deviceManagement().deviceConfigurations()
	.buildRequest()
	.post(deviceConfiguration);

```
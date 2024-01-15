---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IosMobileAppConfiguration managedDeviceMobileAppConfiguration = new IosMobileAppConfiguration();
LinkedList<String> targetedMobileAppsList = new LinkedList<String>();
targetedMobileAppsList.add("Targeted Mobile Apps value");
managedDeviceMobileAppConfiguration.targetedMobileApps = targetedMobileAppsList;
managedDeviceMobileAppConfiguration.description = "Description value";
managedDeviceMobileAppConfiguration.displayName = "Display Name value";
managedDeviceMobileAppConfiguration.version = 7;
managedDeviceMobileAppConfiguration.encodedSettingXml = Base64.getDecoder().decode("ZW5jb2RlZFNldHRpbmdYbWw=");
LinkedList<AppConfigurationSettingItem> settingsList = new LinkedList<AppConfigurationSettingItem>();
AppConfigurationSettingItem settings = new AppConfigurationSettingItem();
settings.appConfigKey = "App Config Key value";
settings.appConfigKeyType = MdmAppConfigKeyType.INTEGER_TYPE;
settings.appConfigKeyValue = "App Config Key Value value";
settingsList.add(settings);
managedDeviceMobileAppConfiguration.settings = settingsList;

graphClient.deviceAppManagement().mobileAppConfigurations()
	.buildRequest()
	.post(managedDeviceMobileAppConfiguration);

```
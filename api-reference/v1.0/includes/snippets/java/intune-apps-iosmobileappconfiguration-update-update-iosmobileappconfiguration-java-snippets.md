---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

IosMobileAppConfiguration managedDeviceMobileAppConfiguration = new IosMobileAppConfiguration();
managedDeviceMobileAppConfiguration.setOdataType("#microsoft.graph.iosMobileAppConfiguration");
LinkedList<String> targetedMobileApps = new LinkedList<String>();
targetedMobileApps.add("Targeted Mobile Apps value");
managedDeviceMobileAppConfiguration.setTargetedMobileApps(targetedMobileApps);
managedDeviceMobileAppConfiguration.setDescription("Description value");
managedDeviceMobileAppConfiguration.setDisplayName("Display Name value");
managedDeviceMobileAppConfiguration.setVersion(7);
byte[] encodedSettingXml = Base64.getDecoder().decode("ZW5jb2RlZFNldHRpbmdYbWw=");
managedDeviceMobileAppConfiguration.setEncodedSettingXml(encodedSettingXml);
LinkedList<AppConfigurationSettingItem> settings = new LinkedList<AppConfigurationSettingItem>();
AppConfigurationSettingItem appConfigurationSettingItem = new AppConfigurationSettingItem();
appConfigurationSettingItem.setOdataType("microsoft.graph.appConfigurationSettingItem");
appConfigurationSettingItem.setAppConfigKey("App Config Key value");
appConfigurationSettingItem.setAppConfigKeyType(MdmAppConfigKeyType.IntegerType);
appConfigurationSettingItem.setAppConfigKeyValue("App Config Key Value value");
settings.add(appConfigurationSettingItem);
managedDeviceMobileAppConfiguration.setSettings(settings);
ManagedDeviceMobileAppConfiguration result = graphClient.deviceAppManagement().mobileAppConfigurations().byManagedDeviceMobileAppConfigurationId("{managedDeviceMobileAppConfiguration-id}").patch(managedDeviceMobileAppConfiguration);


```
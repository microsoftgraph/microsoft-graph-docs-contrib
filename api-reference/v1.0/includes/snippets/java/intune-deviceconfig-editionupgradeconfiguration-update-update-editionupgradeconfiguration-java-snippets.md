---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EditionUpgradeConfiguration deviceConfiguration = new EditionUpgradeConfiguration();
deviceConfiguration.setOdataType("#microsoft.graph.editionUpgradeConfiguration");
deviceConfiguration.setDescription("Description value");
deviceConfiguration.setDisplayName("Display Name value");
deviceConfiguration.setVersion(7);
deviceConfiguration.setLicenseType(EditionUpgradeLicenseType.LicenseFile);
deviceConfiguration.setTargetEdition(Windows10EditionType.Windows10EnterpriseN);
deviceConfiguration.setLicense("License value");
deviceConfiguration.setProductKey("Product Key value");
DeviceConfiguration result = graphClient.deviceManagement().deviceConfigurations().byDeviceConfigurationId("{deviceConfiguration-id}").patch(deviceConfiguration);


```
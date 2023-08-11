---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EditionUpgradeConfiguration deviceConfiguration = new EditionUpgradeConfiguration();
deviceConfiguration.description = "Description value";
deviceConfiguration.displayName = "Display Name value";
deviceConfiguration.version = 7;
deviceConfiguration.licenseType = EditionUpgradeLicenseType.LICENSE_FILE;
deviceConfiguration.targetEdition = Windows10EditionType.WINDOWS10_ENTERPRISE_N;
deviceConfiguration.license = "License value";
deviceConfiguration.productKey = "Product Key value";

graphClient.deviceManagement().deviceConfigurations()
	.buildRequest()
	.post(deviceConfiguration);

```
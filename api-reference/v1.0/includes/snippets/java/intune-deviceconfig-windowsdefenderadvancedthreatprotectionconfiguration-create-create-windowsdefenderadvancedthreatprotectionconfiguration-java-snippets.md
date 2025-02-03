---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

WindowsDefenderAdvancedThreatProtectionConfiguration deviceConfiguration = new WindowsDefenderAdvancedThreatProtectionConfiguration();
deviceConfiguration.setOdataType("#microsoft.graph.windowsDefenderAdvancedThreatProtectionConfiguration");
deviceConfiguration.setDescription("Description value");
deviceConfiguration.setDisplayName("Display Name value");
deviceConfiguration.setVersion(7);
deviceConfiguration.setAllowSampleSharing(true);
deviceConfiguration.setEnableExpeditedTelemetryReporting(true);
DeviceConfiguration result = graphClient.deviceManagement().deviceConfigurations().post(deviceConfiguration);


```
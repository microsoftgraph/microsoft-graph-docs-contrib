---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WindowsDefenderAdvancedThreatProtectionConfiguration deviceConfiguration = new WindowsDefenderAdvancedThreatProtectionConfiguration();
deviceConfiguration.description = "Description value";
deviceConfiguration.displayName = "Display Name value";
deviceConfiguration.version = 7;
deviceConfiguration.allowSampleSharing = true;
deviceConfiguration.enableExpeditedTelemetryReporting = true;

graphClient.deviceManagement().deviceConfigurations("{deviceConfigurationId}")
	.buildRequest()
	.patch(deviceConfiguration);

```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Windows10SecureAssessmentConfiguration deviceConfiguration = new Windows10SecureAssessmentConfiguration();
deviceConfiguration.description = "Description value";
deviceConfiguration.displayName = "Display Name value";
deviceConfiguration.version = 7;
deviceConfiguration.launchUri = "Launch Uri value";
deviceConfiguration.configurationAccount = "Configuration Account value";
deviceConfiguration.allowPrinting = true;
deviceConfiguration.allowScreenCapture = true;
deviceConfiguration.allowTextSuggestion = true;

graphClient.deviceManagement().deviceConfigurations("{deviceConfigurationId}")
	.buildRequest()
	.patch(deviceConfiguration);

```
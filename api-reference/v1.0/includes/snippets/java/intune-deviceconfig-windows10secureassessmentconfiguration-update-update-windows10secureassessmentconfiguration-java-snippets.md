---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Windows10SecureAssessmentConfiguration deviceConfiguration = new Windows10SecureAssessmentConfiguration();
deviceConfiguration.setOdataType("#microsoft.graph.windows10SecureAssessmentConfiguration");
deviceConfiguration.setDescription("Description value");
deviceConfiguration.setDisplayName("Display Name value");
deviceConfiguration.setVersion(7);
deviceConfiguration.setLaunchUri("Launch Uri value");
deviceConfiguration.setConfigurationAccount("Configuration Account value");
deviceConfiguration.setAllowPrinting(true);
deviceConfiguration.setAllowScreenCapture(true);
deviceConfiguration.setAllowTextSuggestion(true);
DeviceConfiguration result = graphClient.deviceManagement().deviceConfigurations().byDeviceConfigurationId("{deviceConfiguration-id}").patch(deviceConfiguration);


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Windows10EnterpriseModernAppManagementConfiguration deviceConfiguration = new Windows10EnterpriseModernAppManagementConfiguration();
deviceConfiguration.setOdataType("#microsoft.graph.windows10EnterpriseModernAppManagementConfiguration");
deviceConfiguration.setDescription("Description value");
deviceConfiguration.setDisplayName("Display Name value");
deviceConfiguration.setVersion(7);
deviceConfiguration.setUninstallBuiltInApps(true);
DeviceConfiguration result = graphClient.deviceManagement().deviceConfigurations().post(deviceConfiguration);


```
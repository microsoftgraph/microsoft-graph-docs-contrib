---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

DeviceEnrollmentLimitConfiguration deviceEnrollmentConfiguration = new DeviceEnrollmentLimitConfiguration();
deviceEnrollmentConfiguration.setOdataType("#microsoft.graph.deviceEnrollmentLimitConfiguration");
deviceEnrollmentConfiguration.setDisplayName("Display Name value");
deviceEnrollmentConfiguration.setDescription("Description value");
deviceEnrollmentConfiguration.setPriority(8);
deviceEnrollmentConfiguration.setVersion(7);
deviceEnrollmentConfiguration.setLimit(5);
DeviceEnrollmentConfiguration result = graphClient.deviceManagement().deviceEnrollmentConfigurations().post(deviceEnrollmentConfiguration);


```
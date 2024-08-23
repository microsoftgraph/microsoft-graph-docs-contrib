---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

DeviceEnrollmentWindowsHelloForBusinessConfiguration deviceEnrollmentConfiguration = new DeviceEnrollmentWindowsHelloForBusinessConfiguration();
deviceEnrollmentConfiguration.setOdataType("#microsoft.graph.deviceEnrollmentWindowsHelloForBusinessConfiguration");
deviceEnrollmentConfiguration.setDisplayName("Display Name value");
deviceEnrollmentConfiguration.setDescription("Description value");
deviceEnrollmentConfiguration.setPriority(8);
deviceEnrollmentConfiguration.setVersion(7);
deviceEnrollmentConfiguration.setPinMinimumLength(0);
deviceEnrollmentConfiguration.setPinMaximumLength(0);
deviceEnrollmentConfiguration.setPinUppercaseCharactersUsage(WindowsHelloForBusinessPinUsage.Required);
deviceEnrollmentConfiguration.setPinLowercaseCharactersUsage(WindowsHelloForBusinessPinUsage.Required);
deviceEnrollmentConfiguration.setPinSpecialCharactersUsage(WindowsHelloForBusinessPinUsage.Required);
deviceEnrollmentConfiguration.setState(Enablement.Enabled);
deviceEnrollmentConfiguration.setSecurityDeviceRequired(true);
deviceEnrollmentConfiguration.setUnlockWithBiometricsEnabled(true);
deviceEnrollmentConfiguration.setRemotePassportEnabled(true);
deviceEnrollmentConfiguration.setPinPreviousBlockCount(5);
deviceEnrollmentConfiguration.setPinExpirationInDays(3);
deviceEnrollmentConfiguration.setEnhancedBiometricsState(Enablement.Enabled);
DeviceEnrollmentConfiguration result = graphClient.deviceManagement().deviceEnrollmentConfigurations().post(deviceEnrollmentConfiguration);


```
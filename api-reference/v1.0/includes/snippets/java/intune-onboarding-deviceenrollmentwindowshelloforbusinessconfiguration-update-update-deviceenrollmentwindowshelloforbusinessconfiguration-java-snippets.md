---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceEnrollmentWindowsHelloForBusinessConfiguration deviceEnrollmentConfiguration = new DeviceEnrollmentWindowsHelloForBusinessConfiguration();
deviceEnrollmentConfiguration.displayName = "Display Name value";
deviceEnrollmentConfiguration.description = "Description value";
deviceEnrollmentConfiguration.priority = 8;
deviceEnrollmentConfiguration.version = 7;
deviceEnrollmentConfiguration.pinMinimumLength = 0;
deviceEnrollmentConfiguration.pinMaximumLength = 0;
deviceEnrollmentConfiguration.pinUppercaseCharactersUsage = WindowsHelloForBusinessPinUsage.REQUIRED;
deviceEnrollmentConfiguration.pinLowercaseCharactersUsage = WindowsHelloForBusinessPinUsage.REQUIRED;
deviceEnrollmentConfiguration.pinSpecialCharactersUsage = WindowsHelloForBusinessPinUsage.REQUIRED;
deviceEnrollmentConfiguration.state = Enablement.ENABLED;
deviceEnrollmentConfiguration.securityDeviceRequired = true;
deviceEnrollmentConfiguration.unlockWithBiometricsEnabled = true;
deviceEnrollmentConfiguration.remotePassportEnabled = true;
deviceEnrollmentConfiguration.pinPreviousBlockCount = 5;
deviceEnrollmentConfiguration.pinExpirationInDays = 3;
deviceEnrollmentConfiguration.enhancedBiometricsState = Enablement.ENABLED;

graphClient.deviceManagement().deviceEnrollmentConfigurations("{deviceEnrollmentConfigurationId}")
	.buildRequest()
	.patch(deviceEnrollmentConfiguration);

```
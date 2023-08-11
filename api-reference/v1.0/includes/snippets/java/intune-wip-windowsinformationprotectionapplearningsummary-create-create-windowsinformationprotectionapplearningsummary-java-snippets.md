---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WindowsInformationProtectionAppLearningSummary windowsInformationProtectionAppLearningSummary = new WindowsInformationProtectionAppLearningSummary();
windowsInformationProtectionAppLearningSummary.applicationName = "Application Name value";
windowsInformationProtectionAppLearningSummary.applicationType = ApplicationType.DESKTOP;
windowsInformationProtectionAppLearningSummary.deviceCount = 11;

graphClient.deviceManagement().windowsInformationProtectionAppLearningSummaries()
	.buildRequest()
	.post(windowsInformationProtectionAppLearningSummary);

```
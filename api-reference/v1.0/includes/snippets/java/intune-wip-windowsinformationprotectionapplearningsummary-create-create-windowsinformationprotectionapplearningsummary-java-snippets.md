---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

WindowsInformationProtectionAppLearningSummary windowsInformationProtectionAppLearningSummary = new WindowsInformationProtectionAppLearningSummary();
windowsInformationProtectionAppLearningSummary.setOdataType("#microsoft.graph.windowsInformationProtectionAppLearningSummary");
windowsInformationProtectionAppLearningSummary.setApplicationName("Application Name value");
windowsInformationProtectionAppLearningSummary.setApplicationType(ApplicationType.Desktop);
windowsInformationProtectionAppLearningSummary.setDeviceCount(11);
WindowsInformationProtectionAppLearningSummary result = graphClient.deviceManagement().windowsInformationProtectionAppLearningSummaries().post(windowsInformationProtectionAppLearningSummary);


```
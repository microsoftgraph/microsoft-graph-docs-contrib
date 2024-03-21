---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

WindowsInformationProtectionNetworkLearningSummary windowsInformationProtectionNetworkLearningSummary = new WindowsInformationProtectionNetworkLearningSummary();
windowsInformationProtectionNetworkLearningSummary.setOdataType("#microsoft.graph.windowsInformationProtectionNetworkLearningSummary");
windowsInformationProtectionNetworkLearningSummary.setUrl("Url value");
windowsInformationProtectionNetworkLearningSummary.setDeviceCount(11);
WindowsInformationProtectionNetworkLearningSummary result = graphClient.deviceManagement().windowsInformationProtectionNetworkLearningSummaries().byWindowsInformationProtectionNetworkLearningSummaryId("{windowsInformationProtectionNetworkLearningSummary-id}").patch(windowsInformationProtectionNetworkLearningSummary);


```
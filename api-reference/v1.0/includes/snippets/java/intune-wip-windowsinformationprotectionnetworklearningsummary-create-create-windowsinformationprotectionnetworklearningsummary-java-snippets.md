---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WindowsInformationProtectionNetworkLearningSummary windowsInformationProtectionNetworkLearningSummary = new WindowsInformationProtectionNetworkLearningSummary();
windowsInformationProtectionNetworkLearningSummary.url = "Url value";
windowsInformationProtectionNetworkLearningSummary.deviceCount = 11;

graphClient.deviceManagement().windowsInformationProtectionNetworkLearningSummaries()
	.buildRequest()
	.post(windowsInformationProtectionNetworkLearningSummary);

```
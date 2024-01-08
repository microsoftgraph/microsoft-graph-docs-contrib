---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WindowsInformationProtectionNetworkLearningSummary windowsInformationProtectionNetworkLearningSummary = graphClient.deviceManagement().windowsInformationProtectionNetworkLearningSummaries("{windowsInformationProtectionNetworkLearningSummaryId}")
	.buildRequest()
	.get();

```
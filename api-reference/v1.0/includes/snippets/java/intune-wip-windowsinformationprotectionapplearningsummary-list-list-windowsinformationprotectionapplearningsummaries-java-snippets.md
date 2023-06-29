---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WindowsInformationProtectionAppLearningSummaryCollectionPage windowsInformationProtectionAppLearningSummaries = graphClient.deviceManagement().windowsInformationProtectionAppLearningSummaries()
	.buildRequest()
	.get();

```
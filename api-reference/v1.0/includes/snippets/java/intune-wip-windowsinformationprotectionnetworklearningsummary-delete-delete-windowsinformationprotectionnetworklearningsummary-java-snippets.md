---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.deviceManagement().windowsInformationProtectionNetworkLearningSummaries("{windowsInformationProtectionNetworkLearningSummaryId}")
	.buildRequest()
	.delete();

```
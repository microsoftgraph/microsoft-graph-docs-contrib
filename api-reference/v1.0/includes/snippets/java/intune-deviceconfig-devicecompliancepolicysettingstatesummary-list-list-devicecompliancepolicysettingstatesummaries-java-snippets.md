---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceCompliancePolicySettingStateSummaryCollectionPage deviceCompliancePolicySettingStateSummaries = graphClient.deviceManagement().deviceCompliancePolicySettingStateSummaries()
	.buildRequest()
	.get();

```
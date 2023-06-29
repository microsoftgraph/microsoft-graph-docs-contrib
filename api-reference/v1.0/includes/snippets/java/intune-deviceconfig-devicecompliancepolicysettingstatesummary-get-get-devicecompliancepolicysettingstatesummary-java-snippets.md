---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceCompliancePolicySettingStateSummary deviceCompliancePolicySettingStateSummary = graphClient.deviceManagement().deviceCompliancePolicySettingStateSummaries("{deviceCompliancePolicySettingStateSummaryId}")
	.buildRequest()
	.get();

```